Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8624EDBE
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 19:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A0NCwFfIlJ4wRS/ubpOoatxbPWiEzRwpREQorm9xLug=; b=EeXabzhhPqvQw3bG0DAZ0Y+eR
	uUNI7zfTUcxi7ZzXEtSjqBYnXNFdZ5KTaP77ujPg5kXNQfsqcwBWQOltdmfocR+ruuIZhjgjpOok3
	kRpou0Y628JwJgkLj+vAMMTPAeYnSiXYZmFOI86Yfhb9bT/OVzRAwLwZC8RAYl3OZA7U0kJ+z61YV
	zgoBb+EXIDCpH9fKNOOwE2jtuEKPgeTySusIl3VBpIEZnuuogxyDIJ8ldJr1L8qKsafGtMJMVLj7h
	7ITY4pkMZO3AiQap6gPFWGLMgZLY6JnkETF1R7aoUl6gKZOFKTxri+Ob86kZMTVZhcyjXAy80mRZ1
	oysGpGh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNFy-0005Pr-Sb; Fri, 21 Jun 2019 17:23:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNFn-0005Mm-OL
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 17:23:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id f21so3708409pgi.3
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 10:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Li3/Zd0LUvybIB3b71HXMMjzUeZEqvJRFhzIPW/X030=;
 b=MGmQQp1LZ0NUuTJLOXvtcuqHw7utqAYkf+/UogLrXQBYylhOrnEropWHRZG6BgcXox
 lbLKU2T9mWAjCHT+UsGW/tUnHgAgFDOyNYqVEdD8xZlXo3SebVB9a2qPr8txH+8M2a6d
 BgDRy758qNY2pwn4V3knp3mxJ1iCINqVk7+qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Li3/Zd0LUvybIB3b71HXMMjzUeZEqvJRFhzIPW/X030=;
 b=lYIDmkiqwjFwUjilWv0QZ8NMzzKoZh0Ec1SQchuwZaqhPKELPMcVSMDatK3UtRI3zb
 cY2AdgBkX84mDotyOrd2NIfg1B6ykDc0EtBWuf4moatqgcOj+kX+J043uPztaAl+8WdM
 DFwY0V2Pnr4gefYNfOhIGmhiPnIlpbU/fbF/MD1besmv9gLxUnAey8lKDXrAV5ebv5xO
 KbhO2tw6AMzG/pj4qwendZkOBhraWhwtwku/E+FSVbq7hTl0tvKGDEnnSkMUyriGNDnu
 C3jJ83agJAydCsu8RRvIcIqW9RnWxsQR0UBoDvhBoHluSZSY5Zeyn5wT6GPBAW/H3q7L
 mFbQ==
X-Gm-Message-State: APjAAAW/D9rAr1Mhy4SPHMA0VrUYxghp9BTnzlUX0xzMTe5bnV+D60uN
 cDeOVpkbDy4vQfgjXOsKQCxJ6Q==
X-Google-Smtp-Source: APXvYqyRkep5QBds+nRn+m4/i4T0UZl0SbK5KfWJP9kXCh0h/+Z+B2YLJUSOG97CHfRPVDx2TOk07A==
X-Received: by 2002:a63:6f0b:: with SMTP id k11mr19276860pgc.342.1561137790995; 
 Fri, 21 Jun 2019 10:23:10 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a6sm6273830pfa.51.2019.06.21.10.23.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 10:23:10 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Ming Lei <ming.lei@redhat.com>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de> <20190620013650.GB31179@ming.t460p>
 <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
 <20190621065851.GA22145@ming.t460p>
 <5ec67ad6-a61a-b28f-9676-864a5f04bbad@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <3ad2ba8d-980b-e154-a181-b58c5f6d5fdb@broadcom.com>
Date: Fri, 21 Jun 2019 10:23:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5ec67ad6-a61a-b28f-9676-864a5f04bbad@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_102311_855975_03F3C0EC 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IFlvdXIgY2hlY2sgY2FuJ3QgaGVscCB3cnQuIHRoZSBkZWFkbG9jaywgZm9yIGV4YW1wbGU6
Cj4+Cj4+IDEpIGluIHNjYW4gd29yayBjb250ZXh0Ogo+Pgo+PiAtIGJsa19tcV9mcmVlemVfcXVl
dWUoKSBpcyBiZWluZyBzdGFydGVkIGFmdGVyIHBhc3NpbmcgdGhlIGNvbnRyb2xsZXIKPj4gICAg
c3RhdGUgY2hlY2sKPj4KPj4gMikgdGltZW91dCAmIHJlc2V0IGlzIHRyaWdnZXJlZCBpbiBhbm90
aGVyIGNvbnRleHQgYXQgdGhlIGV4YWN0IHNhbWUgdGltZToKPj4KPj4gLSBhbGwgaW4tZmxpZ2h0
IElPcyB3b24ndCBiZSBmcmVlZCB1bnRpbCBkaXNhYmxlIGNvbnRyb2xsZXIgJiByZXNldCBpcyBk
b25lLgo+Pgo+PiAtIG5vdyBmbHVzaF93b3JrKCkgaW4gcmVzZXQgY29udGV4dCBjYW4ndCBtb3Zl
IG9uLCBiZWNhdXNlCj4+ICAgIGJsa19tcV9mcmVlemVfcXVldWUoKSBpbiBzY2FuIGNvbnRleHQg
Y2FuJ3QgbWFrZSBwcm9ncmVzcy4KPj4KPiBUaGVyZSBtaWdodCBiZSBhIGRpZmZlcmVuY2UgYmV0
d2VlbiBSRE1BIGFuZCBGQyBpbXBsZW1lbnRhdGlvbnM7IGZvciBGQwo+IHdlIHRlcm1pbmF0ZSBh
bGwgb3V0c3RhbmRpbmcgSS9PcyBmcm9tIHRoZSBIVyBzaWRlLCBzbyBlYWNoIEkvTyB3aWxsIGJl
Cj4gcmV0dXJuZWQgd2l0aCBhbiBhYm9ydGVkIHN0YXR1cy4KPiBXaGljaCBmb3IgYWxsIHRlc3Rz
IEkgKGFuZCBOZXRBcHAgOi0pIGRpZCB3YXMgZW5vdWdoIHRvIGdldAo+ICdibGtfbXFfZnJlZXpl
X3F1ZXVlKCknIHVuc3R1Y2sgYW5kIHRoZSBmbHVzaF93b3JrIHRvIGNvbXBsZXRlLgo+IFdlIF9k
aWRfIG9ic2VydmVkLCBob3dldmVyLCB0aGF0IHRoZSBzdGF0ZSBjaGVja3MgYXJlIGFic29sdXRl
bHkKPiBjcml0aWNhbCB0byB0aGlzLCBvdGhlcndpc2Ugd2UgaW5kZWVkIGVuZGVkIHVwIHdpdGgg
YSBzdHVjayBmbHVzaF93b3JrKCkuCgpSRE1BIGFuZCBUQ1AgZG9lcyB0aGUgc2FtZSB0aGluZyBh
dCB3aGF0IGlzIGJhc2ljYWxseSB0aGUgc2FtZSBwb2ludCAtIAphcyBmYXIgYXMgdGVybWluYXRp
bmcgYWxsIG91dHN0YW5kaW5nIGlvLiBUaGUgZGlmZmVyZW5jZSBpcyBob3cgdGhleSAKdGVybWlu
YXRlLsKgIFJETUEgYW5kIFRDUCB1c2UgbnZtZV9jYW5jZWxfcmVxdWVzdCgpIHJhdGhlciB0aGFu
IGEgY2FsbCAKdGhhdCBpbmR1Y2VzIHdvcmsgb24gdGhlIGxpbmsuIG52bWVfY2FuY2VsX3JlcXVl
c3QoKSBpcyBuZWFyIGltbWVkaWF0ZS4gCkZDIHdpbGwgdGFrZSBsb25nZXIgZm9yIHRoZSBpL28n
cyB0byBjbGVhciAtIHRoYXQncyB0aGUgZGlmZmVyZW5jZS4KCi0tIGphbWVzCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
