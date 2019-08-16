Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56630907B3
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 20:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7dSiE/yPrYozCsdMXIiN2VKpT+adJIGAd8uJMr1YxTY=; b=ijSGb4I/8ZTo/J3j40sryYv7x
	xSViNELex+xNH+tbk3FZ6bjHPxasv8gcpK85O3dCCZZLRpqweG/VgA57XxOe1x40dDUlxoO/MraVe
	DiJr26AJyXG89kARWVsHvJEQG4n8QZEq8fn5sVSiKlOvvHZ/F0xJXF2yeM1dfAr/j/e/FXWUlUOcD
	TjpKOhXb3Sj3J8eXwXn3rbq9r5O5pSb2pLXJCWgjo/SpPuQBHO3Xx+R2INQxRj/lVMzjbX2dIv+Bp
	SWrud0TB/vqe0wZ8IsuiW/+fWcOz5Niv49mxA4b8unPME3AzT+I1+0b0a9getR59JYEYcQL0/+YUD
	3MA17rpxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygu0-0001Fo-3L; Fri, 16 Aug 2019 18:24:40 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygtl-0001FG-0N
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 18:24:26 +0000
Received: by mail-pf1-x42f.google.com with SMTP id 129so3524233pfa.4
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 11:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=DgtuJyjPKsEHrJMiBq+3i+OuDFfQbniIbEhKafXRGg4=;
 b=TQaTFP+O/CAd1aI5BXcxWH/Ae/XvIz+ry4ulv4d4I8Zg1okfLuaaXihkCSq5+yUEa3
 TpZ75v/BK6rxkFaVNLpvqAty4BnfY113wZI7/zcoNFoJvYq9tNfiCW3KksYIHBpmOcXl
 wby/+ljWP/l7QHye30MXWTtIL4/vPeaXlqQ9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=DgtuJyjPKsEHrJMiBq+3i+OuDFfQbniIbEhKafXRGg4=;
 b=BU67y1Nbk/mNV+nT+vyeaRkGBnlHezXejZm2WOhSXXvqzRt8gGDt5kM2J51sIe1nYZ
 4ScDEZm/UGQuLgLhkGjkGZZ2XBZr2KVfl1JEbWwM5Uo7Q+XknYg7fGapWGXk+yCvsyOy
 PaaSJy66/3iWxThE1ZhfSNIYIOofCbIZ0p2OHKNB4s1DZCUAJbQbXd/oDEf1XHRgLu0o
 ZC3oybjpdrT2ihMRbYnobPcXle7iHY+rvx1DGb2RSabGMEFurDaVk/mOj/iGt7trSiDZ
 mgrR2fL7guOWyUQwLvq9Wk9/d8p31MzsoSTi1byVBDuoQfTz4lkstawBGawcaeKaMywk
 GEqA==
X-Gm-Message-State: APjAAAW93r8IPT1tOUjL44WXixWXXTwiVSy+8fJuVHiUtF35odD8f5ne
 Gkq/saDPaeZ5sx+3vY0VThSX+539q+0=
X-Google-Smtp-Source: APXvYqw3s13WLM++8MCcjUlpB81rUWOU6lQyql4gWPTgBsp2DqQIfe5t2nCf5ojL0irPfQ4Dcr+oUA==
X-Received: by 2002:a63:ff65:: with SMTP id s37mr8792755pgk.102.1565979863461; 
 Fri, 16 Aug 2019 11:24:23 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t6sm4797204pjy.18.2019.08.16.11.24.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 11:24:22 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme: make all fabrics command run on a separate
 request queue
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808234643.8180-1-sagi@grimberg.me>
 <4c7083d3-2067-13d8-b3d8-0418769c80c4@broadcom.com>
 <1b3e039b-15ef-703b-1d01-454eaa22ef0e@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <44e08fd5-f5be-0055-2deb-eb914b36eaea@broadcom.com>
Date: Fri, 16 Aug 2019 11:24:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1b3e039b-15ef-703b-1d01-454eaa22ef0e@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_112425_051240_4B6CD370 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzE2LzIwMTkgMTA6MjQgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gVGhpcyBr
ZWVwcyBhbnl0aGluZyBpbiB0aGF0IHNjYW4gdGhyZWFkIGZyb20gZ2V0dGluZyBpbiB0aGUgd2F5
LsKgwqAgCj4+IFdlJ3JlIG5vdCB0b28gZmFyIGZyb20gdGhpcyB3aXRoIHlvdXIgcGF0Y2hlcy4g
SXQgbWF5IGJlIHRoZSAKPj4gaW50ZXJhY3Rpb24gb2YgdGhlIHR3byBpc24ndCBzbyBiYWQgKGlm
IHlvdSBhcmUgbGl2ZSBlbm91Z2ggZm9yIGEgCj4+IGNvbnRyb2xsZXIgSWRlbnRpZnksIGFyZSB5
b3UgbGl2ZSBlbm91Z2ggZm9yIHRoZSBucyBzY2FubmluZyBpb3MgPyksCj4KPiBFeGFjdGx5LCB0
aGlzIGlzIHdoeSBldmVyeXRoaW5nIHN0YXlzIHRoZSBzYW1lLCBhbmQgd2UganVzdCB1bnF1aWVz
Y2UKPiB0aGUgYWRtaW5fcSBhZnRlciB0aGUgY29udHJvbGxlciBpcyBlbmFibGVkIChhbmQgYWxz
byBxdWllc2NlIGJlZm9yZQo+IHdlIGRpc2FibGUpLgo+Cj4+IGJ1dCBteSBpbml0aWFsIHJlYWN0
aW9uIGlzIEknZCBsaWtlIHRvIHNlcGFyYXRlIHRoZW0uwqAgVGhvdWdodHMgPwo+Cj4gSSdtIG5v
dCBzdXJlIEkgdW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgc3VnZ2VzdGluZy4gQWRkaW5nIHN0YXRl
cyB0aGF0Cj4gd2lsbCBkZXRlcm1pbmUgd2hpY2ggcmVxdWVzdCBxdWV1ZSB0byB1c2U/IE5vdCBz
dXJlIGhvdyB0aGlzIGlzIGdvaW5nCj4gdG8gd29yay4gQ2FuIHlvdSBleHBsYWluIG1vcmUgb24g
eW91ciB0aG91Z2h0cz8KPgoKSSdtIGdvb2Qgd2l0aCB0aGUgZXhwbGFuYXRpb24uCgoKCj4+Cj4+
IEkgdGhpbmsgdGhlIGZhYnJpY3NfcSBoYWQgdG8gYmUgcXVpZXNjZWQgYW5kIHVucXVpZXNlZCBh
dCB0aGUgcG9pbnRzIAo+PiB3aGVyZSB0b2RheSdzIGFkbWluX3EgaXMgaW4gZmMuwqAgSXQncyBw
b3NzaWJsZSB0aGUgY29udHJvbGxlciBtYXkgCj4+IHVuZGVyIGdvIGEgcmVzZXQgd2hpbGUgaW4g
dGhlIG1pZGRsZSBvZiBjcmVhdGluZy9pbml0aWFsaXppbmcgYSBuZXcgCj4+IGNvbnRyb2xsZXIg
KG9uIEZDLCBhc3luYyBkZXRlY3Rpb24gb2YgY29ubmVjdGl2aXR5IGlzIGRldGVjdGVkLCAKPj4g
cmVzZXR0aW5nIHRoZSBjb250cm9sbGVyKS4gQXMgc3VjaCwgSSBuZWVkIHRvIGJlIHN1cmUgdGhl
IGZhYnJpYyAKPj4gY29tbWFuZHMgaW5pdGlhbGl6aW5nIHRoZSBjb250cm9sbGVyIGFyZSBzdG9w
cGVkL2Fib3J0ZWQsIGFuZCB0aGUgCj4+IGFkbWluIHF1ZXVlIHdpbGwgYmUgbWFya2VkIG5vbi1s
aXZlIHRvIGFib3J0IGFueSByZXRyaWVzIG90aGVyIAo+PiBhdHRlbXB0cywgdW50aWwgdGhlIG5l
dyBjcmVhdGVfYXNzb2NpYXRpb24gaXMgYXR0ZW1wdGVkLsKgwqAgUXVpZXNjaW5nIAo+PiBhbHNv
IGhlbHBzIGFzLCBhcyBpcywgd2UgYXJlIGxvb3Bpbmcgb24gdGhlIGFkbWluIHRhZyBzZXQgdG8g
Cj4+IGFib3J0L2NsZWFyIGFueXRoaW5nIG91dHN0YW5kaW5nIG9uIHRoZSByZXNldCwgd2l0aCB0
aGUgcmVxdWVzdF9xIG5vdCAKPj4gcXVpZXNjZWQsIHdoaWNoIGlzIHByb2JhYmx5IG5vdCBhIGdv
b2QgdGhpbmcuCj4KPiBPSywgSSBjYW4gYWRkIHRoYXQuCgpUaGFua3MuCgotLSBqYW1lcwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
