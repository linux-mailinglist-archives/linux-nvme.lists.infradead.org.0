Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43933801E9
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 22:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sMgbqamOkxwJJW37j2il9HNq5A1fQSOTgzVwp8Gapuc=; b=ezf8Gx95wLFfK/tD7Qaog1rK+
	8cTAnvOVHZkJ3ExcY3nPp79LVYbjGfieIfIku7+76WHFAJKjKxJJKT3Id4cWzFDrpxFY3Q1kK5uGH
	C1++4uj3E5wLGlVlKNZ2/z9KG+f7J9l+6oqKQ+wrYXP7Z2BjngctLm9B/69K8UdYFcnehp9+zNJS+
	ZAePvn7fyL3+Fz14t+k788TQY1Bm+s1JLl8gGPDhSkam1rANnPqA8F0oWWWft7enC6uPIgGR6s2JF
	Ahbv4czDxfu1dQFgwhiNP0459W33XSsYn/ARdn1q8ZAbNWkEVDCV+vTqm1pLRkZuhKSDXM+uplAIX
	MAiDbT60w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hteRj-0007Ey-2l; Fri, 02 Aug 2019 20:46:39 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hteRZ-00078f-ED
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 20:46:30 +0000
Received: by mail-ot1-f42.google.com with SMTP id x21so13957336otq.12
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 13:46:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HQBNGSlRB1yJhMJudl4qCfvatfDwHXxw/d2qnjDgIn0=;
 b=eUkB8KuIdHLL8TIwtLt7clGxqpFxNvaP0OzX6Gkpqb8mwRzeW39Lf+MoHHHV94Ha0N
 QREi4DK6CZ3gAnxnJIThOenHKDhKwN40Hr22EoRrWyUO6kB6nTMjiNqRbY4leq0PE7zo
 9T/l4xQOS0BlqfELZqbi53Q/OD6dBnXmdFeYHFJGZC7JKvHdsPXf86EWHF1xIQ8w1jnB
 EzMGmT6M6SS5qvPtc1pj2DQPPiHf7DeDBY3klbz0OmoAXsicyNNdXXVLu82Ehf5FyBKJ
 btlo3W2NXbMTQncb+6eJMJxuSpkE00svINjWf7XnwPjQ98RlXTtJXn1AzQzyLwCPKCJh
 EhMA==
X-Gm-Message-State: APjAAAWNY0Ur+FXM1UNSTPgvHLGtF8rFuCUNyASQCpXX9QrgQ7mLyBDP
 jRKiXSq3wwcGvXlsRGcn4IdgZm+B
X-Google-Smtp-Source: APXvYqw2wKANVxtC603E/LjAINVD5foJtK6UHZKO+AX79nZFMG9GLsFGwcoT/0KCdLBTm7TkkyCDVw==
X-Received: by 2002:a9d:61ce:: with SMTP id h14mr79245078otk.298.1564778788324; 
 Fri, 02 Aug 2019 13:46:28 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id n19sm21270931otl.56.2019.08.02.13.46.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 13:46:27 -0700 (PDT)
Subject: Re: nvmet_tcp: panic out of memory on writes
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D165B5@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7ce3b52b-002a-0bbd-e5cb-17cee8653172@grimberg.me>
Date: Fri, 2 Aug 2019 13:46:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D165B5@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_134629_477156_C8E79903 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gQW0gc2VlaW5nIHRoZSBmb2xsb3dpbmcgUGFuaWMgZHVyaW5nIDEwMCUgNEsgd3JpdGUgYWN0
aXZpdHkgb24gTlZNZiB0Y3AgdGFyZ2V0IHNpbmNlIDUuMi4xX3N0YWJsZS4KPiBFeHBvc2VkIGRl
dmljZSAocmFtX2Rpc2sgb3IgYWN0dWFsIG52bWUgZGlzaykgdGFyZ2V0IG1ha2VzIG5vIGRpZmZl
cmVuY2UuCj4gVGVzdGluZyBzaG93cyB0aGlzIG9jY3VycmluZyBiYWNrIG9uIDUuMC43IGFzIHdl
bGwuCgpIaSBNYXJrLAoKQ2FuIHlvdSBydW4gdGhpcyB0ZXN0IHdpdGgga21lbWxlYWsgb24/Cgo+
IAo+IEFueW9uZSBlbHNlIHNlZSB0aGlzIGFuZCB3b3JraW5nIG9uIGl0LCBhcyBJIGRpZyBkZWVw
ZXIuLgo+IAo+IFvCoCA2NTQuMzM1OTUwXSBXb3JrcXVldWU6IG52bWV0X3RjcF93cSBudm1ldF90
Y3BfaW9fd29yayBbbnZtZXRfdGNwXQo+IFvCoCA2NTQuMzM1OTUxXSBDYWxsIFRyYWNlOgo+IFvC
oCA2NTQuMzM1OTU3XcKgIGR1bXBfc3RhY2srMHg1Yy8weDgwCj4gW8KgIDY1NC4zMzU5NjFdwqAg
ZHVtcF9oZWFkZXIrMHg1MS8weDMwNwo+IFvCoCA2NTQuMzM1OTY0XcKgID8gdHJ5X3RvX2RlbF90
aW1lcl9zeW5jKzB4NGQvMHg4MAo+IFvCoCA2NTQuMzM1OTY2XcKgID8gb29tX3Vua2lsbGFibGVf
dGFzaysweDk0LzB4YzAKPiBbwqAgNjU0LjMzNTk2N13CoCBvb21fa2lsbF9wcm9jZXNzLmNvbGQu
MzErMHhiLzB4MTAKPiBbwqAgNjU0LjMzNTk2OF3CoCBvdXRfb2ZfbWVtb3J5KzB4MWMwLzB4NDkw
Cj4gW8KgIDY1NC4zMzU5NzFdwqAgX19hbGxvY19wYWdlc19zbG93cGF0aCsweGM2MS8weGQ0MAo+
IFvCoCA2NTQuMzM1OTc0XcKgID8gcmVjYWxpYnJhdGVfY3B1X2toeisweDEwLzB4MTAKPiBbwqAg
NjU0LjMzNTk3N13CoCA/IHRjcF9yY3Zfc3BhY2VfYWRqdXN0KzB4MWQvMHgxYzAKPiBbwqAgNjU0
LjMzNTk3OF0gwqBfX2FsbG9jX3BhZ2VzX25vZGVtYXNrKzB4MmRiLzB4MzMwCj4gW8KgIDY1NC4z
MzU5ODBdwqAgc2dsX2FsbG9jX29yZGVyKzB4YjgvMHgxNjAKPiBbwqAgNjU0LjMzNTk4Ml3CoCBu
dm1ldF90Y3BfbWFwX2RhdGErMHg3Yi8weDEyMCBbbnZtZXRfdGNwXQo+IFvCoCA2NTQuMzM1OTg0
XcKgIG52bWV0X3RjcF90cnlfcmVjdl9wZHUrMHgyZGYvMHg0ZjAgW252bWV0X3RjcF0KPiBbwqAg
NjU0LjMzNTk4Nl3CoCA/IHRjcF9zZW5kcGFnZV9sb2NrZWQrMHg0NC8weDYwCj4gW8KgIDY1NC4z
MzU5ODhdwqAgbnZtZXRfdGNwX2lvX3dvcmsrMHg3MS8weGE5MCBbbnZtZXRfdGNwXQo+IFvCoCA2
NTQuMzM1OTkyXcKgIHByb2Nlc3Nfb25lX3dvcmsrMHgxYTEvMHgzYTAKPiBbwqAgNjU0LjMzNTk5
M13CoCB3b3JrZXJfdGhyZWFkKzB4MzAvMHgzODAKPiBbwqAgNjU0LjMzNTk5NV3CoCA/IHB3cV91
bmJvdW5kX3JlbGVhc2Vfd29ya2ZuKzB4ZDAvMHhkMAo+IFvCoCA2NTQuMzM1OTk2XcKgIGt0aHJl
YWQrMHgxMTIvMHgxMzAKPiBbwqAgNjU0LjMzNTk5N13CoCA/IGt0aHJlYWRfY3JlYXRlX29uX25v
ZGUrMHg2MC8weDYwCj4gW8KgIDY1NC4zMzYwMDBdwqAgcmV0X2Zyb21fZm9yaysweDM1LzB4NDAK
PiBbwqAgNjU0LjMzNjAwMV0gTWVtLUluZm86Cj4gW8KgIDY1NC4zMzYwMTNdIGFjdGl2ZV9hbm9u
OjI3IGluYWN0aXZlX2Fub246NDcgaXNvbGF0ZWRfYW5vbjowCj4gYWN0aXZlX2ZpbGU6NDUgaW5h
Y3RpdmVfZmlsZTozMDkgaXNvbGF0ZWRfZmlsZTowCj4gdW5ldmljdGFibGU6MCBkaXJ0eTowIHdy
aXRlYmFjazowIHVuc3RhYmxlOjAKPiBzbGFiX3JlY2xhaW1hYmxlOjg5OTc1IHNsYWJfdW5yZWNs
YWltYWJsZTo2Mzg1Nwo+IAo+IENoZWVycyAtLS0gTWFyawo+IAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKPiBMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
