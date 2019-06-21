Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2378B4EDBD
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 19:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A0NCwFfIlJ4wRS/ubpOoatxbPWiEzRwpREQorm9xLug=; b=U9yJ8OP1gbN7DD4ZwKzMakmFi
	X/9VunZIYyBfVklmQ2DxmdEPRvGqRNz8205eeRPZpVoTsv0c3jMyi+LUCN4tJuNbOlyVV0buXlZEm
	yf5hNVenCKi+rSt0MkE7ssPxIXeWuEeAwwUDRE0DUvCrxP+s7ptt5wsvd47zczznwd64hPMlAT7oV
	rh5E60EpVTyjixoprsQl9867gC60dMxC6w0NAedCWut3lPKtJgwoY1kmrXb+sX/X6nGSFY1B+z3lh
	y31hWvLo+sexTLjCGbRBghSsRIXJ1BFy53KsdSOKmdkFJJ/C7W8cmtEiLE4rzE/zc+BipUU85e3eW
	A49cXXxAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNFn-0005Jg-O0; Fri, 21 Jun 2019 17:23:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNFh-0005HH-O8
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 17:23:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so3311777pls.8
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 10:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Li3/Zd0LUvybIB3b71HXMMjzUeZEqvJRFhzIPW/X030=;
 b=RJ0KPUO4eIDM+8QZQh3Bt015riSrvNV90edUGoo1Gcy0NIGp2IEYpfp62yI65w/Gtz
 8BgW4qPqjQlvLrYs/Q0XCLbJBZCxxUqm100nc/9Phj2r9SfVBIULw5m1jsfO6NW16B1w
 wehuye30MLOpNToy5Wr+ei2NXnOaqmNTPR5u0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Li3/Zd0LUvybIB3b71HXMMjzUeZEqvJRFhzIPW/X030=;
 b=sAmL7HbmsxF0KU/AZeePqFWqV6aTybrARZ0T5EhASQ2n5NCNqR4hKTTmdBoxTqtMIx
 pj1Yf11Wy+FsH72afCogpSl7X+CyDi15VWbmVoV/z4ednofpqOvuNj/NaZAvDX2ewnpr
 1NaGYzHVlZfHrpPvmYys89kqlciOMJT1N+IsUhfS9KNTwC+xPT/MaGWvvrp5k39yPOtp
 GOX0hRRCoZPJ3D5XTDLE5kLp1Sl3BZ8eNP1Q3CBAzQ8GrXYpLhrlidV5UYW7vTYzRHSL
 zqJJWTBssMbr2n0XU5wKJKnQP9yY9ewmbk0S9AVFLtnwc+BdQ2fjF/JZYkZTohjIVIDh
 ICJQ==
X-Gm-Message-State: APjAAAXnzswh1AC3dzvQ9o+R1NyaHOKa0eGpryOrIqojux8oR3xwf4nB
 +pCuAOTJ/qrAtiARaArc7tMzCCv/1jw=
X-Google-Smtp-Source: APXvYqy/ddfX/ONlcgEh+erti57GbUAO98WBaY72GhLMRz5P23LXICmwv2ufjSQo5k4giqohjp+Uiw==
X-Received: by 2002:a17:902:7583:: with SMTP id
 j3mr14682380pll.196.1561137783757; 
 Fri, 21 Jun 2019 10:23:03 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r1sm3051344pji.15.2019.06.21.10.23.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 10:23:02 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Ming Lei <ming.lei@redhat.com>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de> <20190620013650.GB31179@ming.t460p>
 <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
 <20190621065851.GA22145@ming.t460p>
 <5ec67ad6-a61a-b28f-9676-864a5f04bbad@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <980bebd2-8b56-21f9-f518-61c16f3374c5@broadcom.com>
Date: Fri, 21 Jun 2019 10:23:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5ec67ad6-a61a-b28f-9676-864a5f04bbad@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_102305_795464_4D63A3AB 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
