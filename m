Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C257CB83
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oq1w8E+Wpy+O81MF+ZOoyS9MB7v9h//SGfITMn0XLCI=; b=pFlUO+/NCRQQ4cYleVAa6lXOc
	eFeW6lq8Mn1Z+0dIE63zSYSjRs/kIeC1uf+3QN9wyD+j8u3CjieZMhvvu0y69wgkrsVqSN9WSEpY3
	ISoJc2MGza5imjLFWlXjr8P/joAEjLq1qWxIjiTlK+25twPZTtr74BQeCkk1eGuqZhZxjQUG8hdot
	Wcdq8BjEnCSD/3FbyNA4p7hp2O4nHvbOTj3PDIsMSRF8DNT54668nX0G1jdc7e7ODtOwYYJh8CoBZ
	sIBj2dbdgxVaY/SKOO8QCngXoJJodI38vyLYDFQ+E3ti3NcvY/oZ7RTMdMf20GikQ6UGtsoOAy+p2
	uTrzXUo0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hst2B-0002VI-DW; Wed, 31 Jul 2019 18:09:07 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hst26-0002Uy-Ti
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:09:04 +0000
Received: by mail-oi1-f194.google.com with SMTP id w79so51491928oif.10
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 11:09:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KQoW/TKMFHiqmuGBFmoa8CnP+JDSoKIIcaU+nvJ5uQ8=;
 b=ApI3codzCsREiiYwEcBzGB18NzMXKlyvGhGGaTr1FmLpP3CTRzrhgXE7hD7+3/UgC2
 lrc8wWsxHcNDRdcck9Cpnx5gKauDsfhmRzm1QDoJtwhUJDyYTUPGkSTWVd66JakMGCns
 Q/5xpJahcV88iKB6H5K2zc8q5ToZbIFtu+b9RYmzmwlD1c10cVLunSAcisz39JB6Vmm5
 k90/4rIeK1rj0ofb+ksu5eE8ooEw1qtOvmvtUb/wMq3SlgtkbGJKAbVVje5a1UOemoWV
 SesTL0ME/4ga+DOY0zBDggK/2PXBB1iAHxICsI7w40MesFetcyZsWQubM9ItL7rhUW0M
 +pxg==
X-Gm-Message-State: APjAAAW//RO/dZrX3769LyXpx8exBhMRfhdhP9SLBYOFrPiLILF0Kkga
 lAUzVJnGHvQTKvbMKfz7Tqs=
X-Google-Smtp-Source: APXvYqynTyPg2pzhHZaVDSO33biBa1K7lYMU50GeSZ14LyTHQqb9dHrYiVXdjYvpF3ZAIPElGWalVg==
X-Received: by 2002:aca:4c14:: with SMTP id z20mr59049158oia.121.1564596541938; 
 Wed, 31 Jul 2019 11:09:01 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id m72sm23618168oig.14.2019.07.31.11.08.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:09:01 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <f6ef7bfc-0d7c-95e6-21d3-b69545a1715b@grimberg.me>
 <0d1ab1b6-220e-aa25-465a-5d9d0a01b920@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <68a718a4-0cb5-6d3d-ec48-cc6350b0264f@grimberg.me>
Date: Wed, 31 Jul 2019 11:08:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0d1ab1b6-220e-aa25-465a-5d9d0a01b920@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_110902_962037_7C43B0DD 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4gS2VpdGgsCj4+Pj4KPj4+PiBBcyBmb3IgdGhlIGZhaWx1cmUgZHVyaW5nIHJlc2V0IHNj
ZW5hcmlvLCB0aGlzIGlzIGhhcHBlbmluZyBvbmx5IHdoZW4KPj4+PiB0aGUgbmFtZXNwYWNlIGlz
IGFib3V0IHRvIGdvIGF3YXkgb3Igc29tZXRoaW5nIGlzIHNlcmlvdXNseSB3cm9uZyByaWdodAo+
Pj4+IChsb29raW5nIGZyb20gd2hlcmUgbnZtZV9raWxsX3F1ZXVlcyBpcyBjYWxsZWQpLgo+Pj4+
Cj4+Pj4gRG8geW91IHN0aWxsIHRoaW5rIHdlIHNob3VsZCBhdm9pZCBjYWxsaW5nIHRoZSByZXZh
bGlkYXRlX2Rpc2sgaWYgdGhlCj4+Pj4gY29udHJvbGxlciBpcyByZXNldHRpbmc/Cj4+Pgo+Pj4g
SSB3YXMgY29uc2lkZXJpbmcgaWYgYSByZXNldCBoYXBwZW5zIHRvIHRyaWdnZXIgd2hlbiBudm1l
J3MKPj4+IHJldmFsaWRhdGVfZGlzayB0cmllcyB0byByZWFkIGlkZW50aWZ5IG5hbWVzcGFjZS4g
SXQncyBwb3NzaWJsZSB0aGF0Cj4+PiBjb21tYW5kIGdldHMgYWJvcnRlZCwgYW5kIHdlIGRvbid0
IHJldHJ5IGFkbWluIGNvbW1hbmRzLCBzbyB3ZSdkIHJldHVybgo+Pj4gLUVOT0RFViBhbmQgbnZt
ZV92YWxpZGF0ZV9ucygpIHJlbW92ZXMgYW4gb3RoZXJ3aXNlIGhlYWx0aHkgbmFtZXNwYWNlLgo+
Pgo+PiBCdXQgaWYgdGhlIGN0cmwtPnN0YXRlIGNvbmRpdGlvbiBpcyBhZnRlciB0aGUgcmV2YWxp
ZGF0ZV9kaXNrIGNhbGwgaXQKPj4gd29uJ3QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UuCj4+IC0tIAo+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChucy0+ZGlzayAmJiByZXZhbGlk
YXRlX2Rpc2sobnMtPmRpc2sgJiYKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGN0cmwtPnN0YXRlID09IE5WTUVfQ1RSTF9MSVZFKQo+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX25zX3JlbW92ZShucyk7Cj4+IC0t
IAo+Pgo+Pj4KPj4+IEknbSBub3QgdG9vIGNvbmNlcm5lZCBhYm91dCB0aGlzIGNvcm5lciBjYXNl
IGFjdHVhbGx5IG9jY3VyaW5nIGluCj4+PiBwcmFjdGljZSwgdGhvdWdoLgo+Pgo+PiBTYXksIHdo
eSBhcmUgd2UgcmVtb3ZpbmcgdGhlIG5hbWVwc2FjZSBpZiB0aGUgcmV2YWxpZGF0ZSBmYWlsZWQ/
Cj4+IERvbid0IHNlZSBhbiBlcXVpdmFsZW50IGJlaGF2aW9yIGluIHNjc2kgb3Igb3RoZXJzIGlu
IGRyaXZlcnMvYmxvY2suLgo+IAo+IFRoYXQgcHJvYmFibHkgZHVlIHRvIHRoZSBjb252b2x1dGVk
IGxvZ2ljIGluIG52bWVfc2Nhbl9uc19saXN0KCkuCj4gVGhhdCBzY2FucyBhbGwgbmFtZXNwYWNl
cyBpbiB0aGUgbGlzdCwgYW5kIHJlbW92ZXMgdGhvc2Ugd2hpY2ggZmFpbHMuCj4gV2hpY2ggc2Vl
bXMgc2Vuc2libGUsIGJ1dCByZWFsbHkgc2hvdWxkbid0IGJlIGNhbGxlZCBkdXJpbmcgcmVzZXQK
PiBhcyB3ZSBjYW5ub3QgZ2V0IGFueSBzZW5zaWJsZSByZXN1bHRzIGZvciBhbnkgb2YgdGhvc2Ug
Y2FsbHMuCj4gCj4gVGhpcyB3YXMgdGhlIHJlYXNvbiBmb3IgbXkgb3JpZ2luYWwgcGF0Y2ggdG8g
Zmx1c2ggdGhlIHNjYW5uaW5nIHRocmVhZAo+IGJlZm9yZSBlbnRlcmluZyByZXNldC4gTWF5YmUg
d2Ugc2hvdWxkIHJldml2ZSBpdC4uLgoKSSBzdGFuZCBmaXJtIHRoYXQgY29udHJvbGxlciByZXNl
dHMgc2hvdWxkIG5vdCBhdHRlbXB0IHRvIGZsdXNoCnRoZSBzY2FuX3dvcmsgd2l0aCBzb21lIGhv
b2tzIHRvIHRyeSB0byBtYWtlIGl0IGJhaWwgb3V0IGVhcmx5LiBJIGp1c3QKZG9uJ3QgdGhpbmsg
aXRzIHRoZSBjb3JyZWN0IHNvbHV0aW9uLiBOb3RlIHRoYXQgdGhlIHNjYW4gZmx1c2ggZXhpc3Rl
ZAppbiB0aGUgcmVzZXQgZmxvdyBiZWZvcmUgKG52bWVfc3RvcF9jdHJsKSBidXQgbW92ZWQgYXdh
eSBiZWNhdXNlIGl0CmNhdXNlZCBpc3N1ZXMgYmVmb3JlIGFuZCBwcm9iYWJseSB3aWxsIGFnYWlu
IGlmIGl0cyByZXN0b3JlZC4KCldoZW4gdGhlIGNvbnRyb2xsZXIgcmVzZXRzLCBJL09zIGZhaWwg
KGZhc3QtZmFpbCBvciBibG9jayksIHRoZSBtb2RlbCBpcyAKZmluZSBpbiBteSBtaW5kLCBidXQg
bmVlZHMgc29tZSBoYXNoaW5nIG91dCB0byBiZSBtb3JlIGF3YXJlIG9mIHRoYXQuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
