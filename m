Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA36E29252
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+dBJwIfSf4l48Ouxs3fsOdzP3kR6ylCHJl+6TBs0WZQ=; b=kF3kIMIx6g77CjimyLof3bTg4
	qIdqjk+SVQmCFZKgcqwo1tbgnIHKrlHVkoK0wxdn4Xhz50eQ77YIZQm8yzxYrVE76+8uQ8SyMHe3P
	bIsbYiHq2ng0r8cQzF5c5fA8bzASBY4QUVW8ug7cglh0QhkACzaNo1v8Tmd+UH4SocKn+IDGcwKtl
	KH/tm47lA+Zg7sW/mH4ZMMdg24brUCwak7kVo8jwH70VYWxqMfNCOy8A86Wve6473VhEbH4yZIN0m
	iU/fMOMAu1NgMiffznXAKS4M82vgXgbppw0UlX5Y6blx3GHBmfWOJzkwB/syohYCYsaJ+HZj/fGfS
	m6QCJ1ESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Ab-0004Jp-A0; Fri, 24 May 2019 08:03:17 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5AX-0004JQ-1H
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:03:14 +0000
Received: by mail-pl1-f193.google.com with SMTP id f12so3835854plt.8
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:03:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fs2X00c8Vf8621fInYzY+CWIfl2MllqM0uV2KpsQMY0=;
 b=IsslbO4/DgQ+SPj3yITjm4ijeh0xlscb6O4aiORiygq9DSlabXb9rSZaCvqLvIsZFf
 OZeG1l3vNEuwK4OlRnJxDRc7g+kKd84Uv37xYzchdW99be2tPHFwvAnHIWI4GlskCjpk
 TLIR6DJiL/vowj+UmfDjZLzUE0BcrSllk3b9sf3knGyQD/CKm/tfHYuf4d12QWI/7gM5
 /8hBXrkZmEklZzR2WywbPGMzwyIechVykzHUKTJP1XkAwmGhvdKJxXpRDXfRUUIg+3ni
 kXnonC/6wkNGq/qP82gdtv83qJrk3eo57er5cwIpgUfDKKoSa6La1zdFHTuN4vTfw3GQ
 +Tug==
X-Gm-Message-State: APjAAAU7F9K1W1meaJr8RJ+Vj9Zqj2nv0hB41gTWev5ZS21bg1WthO/q
 i/e7kC0zDy/7RTh6QyMd/9c=
X-Google-Smtp-Source: APXvYqxQvIb047aADKrWbYRHse/24hnufkIGlpDk4y17PNO9bPwhxNhueGjr/YCmAAvXnVDLsh99og==
X-Received: by 2002:a17:902:7c15:: with SMTP id
 x21mr5858764pll.311.1558684989208; 
 Fri, 24 May 2019 01:03:09 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id e10sm3168422pfm.137.2019.05.24.01.03.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:03:08 -0700 (PDT)
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
Date: Fri, 24 May 2019 01:03:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521143540.GB1639@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_010313_076076_C5F990ED 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Hannes Reinecke <hare@suse.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IG1heWJlIHdlIGNhbiBpbXByb3ZlIGl0IGFuZCBwcmludCBhbHNvIHRoZSBuYW1lc3BhY2Ug
ZHVyaW5nIHRoZSAibnZtZQo+PiBsaXN0LXN1YnN5cyIgY29tbWFuZC4KPj4KPj4gc29tZXRoaW5n
IGxpa2U6Cj4+Cj4+IFtyb290QHNlcnZlcjUwIH5dIyBudm1lIGxpc3Qtc3Vic3lzCj4+IG52bWUt
c3Vic3lzMCAtIE5RTj10ZXN0c3Vic3lzdGVtXzAKPj4gXAo+PiAgIMKgKy0gbnZtZTAgcmRtYSB0
cmFkZHI9MTEuMjEyLjE0MC4xNDYgdHJzdmNpZD00NDIwCj4+ICAgwqBcCj4+ICAgwqAgKy0gbnZt
ZTBuMSBTTj1jZjhiYmZmNjYxNTAyYzUxIE1vZGVsPUxpbnV4Cj4+ICAgwqAgKy0gbnZtZTBuMiBT
Tj1jZjhiYmZmNjYxNTAyYzUxIE1vZGVsPUxpbnV4Cj4+Cj4+Cj4+IGFuZCB3ZSdsbCBnZXQgc3Vi
c3lzL2N0cmwvbnMgcmVsYXRpb25zIGluIDEgY21kLgo+Pgo+PiB0aG91Z2h0cyA/Cj4gCj4gWWVz
LCB0aGlzIGlzIHZlcnkgdXNlZnVsISBJJ2QgbGlrZSB0byBhZGQgdGhpcyBhcyBzb29uIGFzIHBv
c3NpYmxlLgo+IERvIHlvdSBoYXZlIGEgcGF0Y2gsIG9yIGlzIHRoaXMganVzdCBhbiBleGFtcGxl
PyAgVGhlIG9ubHkgY2hhbmdlIEknZAo+IHJlY29tbWVuZCBpcyByZW1vdmUgU04gYW5kIE1vZGVs
IHNpbmNlIHRob3NlIGFyZSBjb250cm9sbGVyIHByb3BlcnRpZXMKPiByYXRoZXIgdGhhbiBmcm9t
IHRoZSBuYW1lc3BhY2UuCgpUaGlzIG5vdyBnaXZlcyBzb21lIGNvbnRleHQgdG8gdGhlIHNlcmll
cyBNYXggcG9zdGVkIDopCgpJIHN0aWxsIGRvbid0IHVuZGVyc3RhbmQgaG93IHRoaXMgaXMgaGVs
cGluZyBtb3JlIHRoYW4gdGhlIGV4aXN0aW5nCmxpc3Qtc3Vic3lzIGZvciB3aGF0IHlvdSdyZSB0
cnlpbmcgdG8gYWNoaWV2ZSBrZWl0aC4KCllvdXIgdXNlLWNhc2Ugd2FzICJJIHdhbnQgdG8gdW5k
ZXJzdGFuZCB3aGF0IGlzIG15IGNvbnRyb2xsZXIgZm9yIAovZGV2L252bWUwbjEiLiBUaGlzIGlu
Zm9ybWF0aW9uIGlzIGFscmVhZHkgYXZhaWxhYmxlIGluIG52bWUgbGlzdApzdWJzeXMuIFdoeSBk
byB5b3UgbmVlZCB0aGUgbXBhdGgtc2xhdmUgZGV2aWNlcyBsaXN0ZWQgYXMgd2VsbD8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
