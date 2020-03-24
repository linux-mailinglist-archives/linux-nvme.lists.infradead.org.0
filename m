Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32FE1919AD
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 20:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kouv5nmSYQzAHf62ejHwV4UkoKhal8LjUpsGVDoA9Is=; b=bdSuf0265r/cJDte9/y1AgTgk
	YPzqFVXV0H6WhAPmyWsHUSTrC8jO1MhnMl9pErX+H1GOmZc/Es3Q3d8m3hz6QkWDkiCdAmklZvhgM
	XsElD7ufOZDQC2PGU1FwYsWdTRzF60lzuAdbWovUKbsUvSvc0SJrHFx8YXnN6nckD4ZS6HHfwNqUC
	hhJWhyOq5PPmmPVwa2quWYUeUeRsqmznnzWokUb6Ck458nSMEYsISF2TgS/3Pa8Asc9Ro9m/ocJB5
	6dIhmrQKixnG3+xpfRiwkAc9bPaz8Gut2ivZ4BVkRINwP6VRl4IEL8ROZQ0P9RrVBOScWE0S6EmdK
	E4t7sTlNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoxn-0001cf-Fc; Tue, 24 Mar 2020 19:11:47 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoxh-0001c2-J7
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 19:11:43 +0000
Received: by mail-pj1-f68.google.com with SMTP id mj6so2022034pjb.5
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 12:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SdhfH0ISknJvz1cTYHJpOtsI4hloz9bu0eyukicT8CQ=;
 b=leFOtrlr4Cb00I4i1qUP66fgViyFmYJESr/l/TJPUGZhoq1I3fjluoDYfi9drhVLx+
 7UHtyB3thNWYa5DVAmLQMF3z4BXS7gVz9EF5qQXIkEJdzues5h7Ncw8DGWyIdiVwfje0
 Fl4dqQHUU7amKe2ee3J9KDGrhfxfEq/gqTr79w9MmyxhVM7OaJH32Vt5p+JClF+PqbIl
 wGMQp8DUBgh0IvpgJ773k8HZuQvyL2DtCmV3FdP8IzKS8idXbejunf9IvfNSZ0GQxIFX
 4c6hUe13oWQS0qJl1qwebzKVr6RrIDYhkHx7qUxmpW1O+o13Q1ZSKZqRyYGaKbCh2y0M
 7SzA==
X-Gm-Message-State: ANhLgQ1UNBlMTejIZJaW3pB7rX52KnOjHoEN9kFgmL9CrSy2JZq7wtpo
 ANPeEb9Z+hTQGYfmYwh2W2+2nkSO
X-Google-Smtp-Source: ADFU+vvox2FoB9mcHJq/PZ/4KWjiz/TfK6QloLZUzXwkXDwYVP3Yk2EdCHD9xb2j9PhR1QhyYxfl1g==
X-Received: by 2002:a17:902:b785:: with SMTP id
 e5mr11679101pls.175.1585077098655; 
 Tue, 24 Mar 2020 12:11:38 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id y142sm17397301pfc.53.2020.03.24.12.11.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 12:11:37 -0700 (PDT)
Subject: Re: [PATCH rfc 2/2] fabrics: allow user to pass hostname instead of
 traddr
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>
References: <20200324090324.24459-1-sagi@grimberg.me>
 <20200324090324.24459-3-sagi@grimberg.me>
 <b5812c46-7763-1581-e9a7-2e2927ccee18@mellanox.com>
 <233d0600-7d91-7a12-b58f-347697fa6bc0@grimberg.me>
 <86b265cc-d1e5-1dee-cd9d-83c4f5e976d0@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1740e836-7dff-35eb-6e42-17b666faa8ec@grimberg.me>
Date: Tue, 24 Mar 2020 12:11:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <86b265cc-d1e5-1dee-cd9d-83c4f5e976d0@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_121141_631429_7A99E374 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4gwqAgc3RhdGljIGludCBjb25uZWN0X2N0cmwoc3RydWN0IG52bWZfZGlzY19yc3BfcGFn
ZV9lbnRyeSAqZSkKPj4+PiDCoCB7Cj4+Pj4gwqDCoMKgwqDCoCBjaGFyIGFyZ3N0cltCVUZfU0la
RV0sICpwOwo+Pj4+IEBAIC0xMjMwLDYgKzEyODMsMTMgQEAgc3RhdGljIGludCBkaXNjb3Zlcl9m
cm9tX2NvbmZfZmlsZShjb25zdCBjaGFyIAo+Pj4+ICpkZXNjLCBjaGFyICphcmdzdHIsCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIChjZmcucGVyc2lzdGVudCAmJiAhY2ZnLmtlZXBfYWxpdmVf
dG1vKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNmZy5rZWVwX2FsaXZlX3RtbyA9
IE5WTUZfREVGX0RJU0NfVE1POwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoY2ZnLmhvc3RuYW1l
KSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gaG9zdG5hbWUydHJhZGRyKCZj
ZmcpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjZmcuaG9zdG5hbWUgPSBOVUxMOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gKwo+
Pj4KPj4+IEkgZ3Vlc3MgeW91IGFkZCB0aGUgTlVMTCB0byBjaGVjayBtdXR1YWwgZXhjbHVzaW9u
IGxhdGVyID8KPj4KPj4gVGhlIE5VTEwgYXNzaWdubWVudCBoZXJlIGlzIGJlY2F1c2Ugd2UgYXJl
IGxvb3Bpbmcgb24gdGhlIGNvbmYKPj4gZmlsZSBlbnRyaWVzIHdoaWNoIGNhbiBoYXZlIGEgZGlm
ZmVyZW50IGhvc3RuYW1lLiBUaGUgb3RoZXIKPj4gbG9jYXRpb25zIGFyZSBhIG9uZS1zaG90IHNv
IHRoaXMgYXNzaWdubWVudCBpcyBub3QgbmVlZGVkLgo+Pgo+Pj4gQ2FuIHdlIGNoZWNrIGl0IGlu
IGJ1aWxkX29wdGlvbnMgPwo+Pgo+PiBXaGVuIHdlIGdldCBhIGhvc3RuYW1lIHdlIHJlc29sdmUg
dGhlIHRyYWRkciB3aGljaCBpcyB3aGF0Cj4+IGJ1aWxkX29wdGlvbnMgbmVlZHMgKGhvc3RuYW1l
IG5vdCBhbiBvcHRpb24gdGhhdCBpcyBwYXNzZWQgdG8KPj4gdGhlIGRyaXZlcikuCj4+Cj4+IERv
ZXMgdGhhdCBhbnN3ZXIgeW91ciBxdWVzdGlvbj8KPiAKPiBJIG1lYW50IHRvIHByZXZlbnQgYSB1
c2VyIHRvIHNlbmQgdGhlbSBib3RoIGluIHRoZSBjb21tYW5kIGxpbmUgKG5vIHRvIAo+IHNlbmQg
aXQgdG8gdGhlIGRyaXZlcikuCgpidWlsZF9vcHRpb25zIGlzIGp1c3QgY29udmVydGluZyBvcHRp
b25zIHRvIGFuIGFyZ3N0ciwgbm90IHN1cmUgaXRzIGEKZ29vZCBpZGVhIHRvIG1vdmUgdGhhdCB0
aGVyZS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
