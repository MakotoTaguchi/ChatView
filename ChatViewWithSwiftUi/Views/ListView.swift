//
//  ListView.swift
//  ChatViewWithSwiftUi
//
//  Created by 田口真人 on 2024/08/10.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            // Header
            header

            // List
            list
        }
            .padding(.horizontal)
    }
}

#Preview {
    ListView()
}

extension ListView {
    private var header: some View {
        HStack {
            Text("トーク")
                .font(.title2.bold())

            Spacer()

            HStack(spacing: 16) {
                Image(systemName: "text.badge.checkmark")
                Image(systemName: "square")
                Image(systemName: "ellipsis.bubble")
            }
            .font(.title2)
        }
    }

    private var list: some View {
        ScrollView {
            VStack {
                ForEach(0..<5) { _ in
                    listRow
                }
            }
        }
    }

    private var listRow: some View {
        HStack {
            Image("user01")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("タイトル")
                Text("最新のメッセージ")
                    .font(.footnote)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            Text("12/31")
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}
