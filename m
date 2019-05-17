Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9A221DDA
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 20:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XkYrQXy3JKGeDO69///rVxV8Uud2zQ7FOx+OmQMZ5xQ=; b=DqW7lpuxx/FQEmwHxGu+uR5/t
	7KV3/JFId4R+KJCxAYFiUfjv6weSIGg6hF7jPHNYb0aqtHJhfcyBCQGDKhxK0aYAV17X50onT2Ldx
	aw8TYYFT3DkQIc4+jxpmj4h/QV1Euok/ISH9TI4QLPCsthUttvlF0UudUUaGvFniI0RAaDwG40JjD
	NAWnuPVNwYTIBQ+MV41n9GixXyfzFttttzyUJB13Yri2dIz99KNdj0inyoEaXtog9cOiMuyKN/LDE
	Er0chlTDFYTAUcbINk02B76o53eEoLMktgrZV8o4Ac2LJ/Xs7vWbkKUL4tGtAsH5tCvXAJ/CC+2hH
	hLuY/ZPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhyb-0000mm-0N; Fri, 17 May 2019 18:53:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhyV-0000mK-G1
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 18:53:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id v80so4105505pfa.3
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 11:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sWCkTO8b1wjD2L0ft9RfPqAUGDThGL+jsO+xn+33EgI=;
 b=btLhB/w4evSNb/BoBB9iHoY0aS+8vzA39RH32a7x3ATe5iCht3kAWLhkGbudt0f9G3
 ZoaQbQqQSVQm5QChSIaEaIZszW5laCcq4LojNgNW3ncViDrSQcSGt+5LdlGiTrS3575M
 VsQQjmRCObEv0CtI3E/iqALW9F4NdRhrVNMrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sWCkTO8b1wjD2L0ft9RfPqAUGDThGL+jsO+xn+33EgI=;
 b=tgwPi4qHAJQbIUqC+nwlGAKlrGueXaR64gKA50XcYKi74x3Fi/ToZO7ycX+mBrAWEV
 pd4pGoWhUjvmOhaO9UPEff5yGXSjH4SntDi+1uHDJU/FcNaFjPjrbT4I6cRZteTmy1Z4
 S8UbxddBEz7MJgtrlFmO1+JRg3PwVus/V7rgFN9XIKNhfaiZvL9UNxtdnzBnbDpG7UkH
 8jmOfJttMTYebI+KGyyTxC/oR9NiZ7lpx5nzCJXZgUaA7WWXlYDz2jhc0sSaNe/oGLrM
 WapweoXVtonpMY7Wy435Ktp+2neXlH4ONpO48JYZ7j9/IQ8XTqvJm9hyxBFsXv1hjdrD
 zj2w==
X-Gm-Message-State: APjAAAX9HDRcqciSmCnNSmpMI3lGc6s03iKYWG2AOxu+f2GAYrFCR9vV
 j6ZafXTcvVirJcuKURSivdD9Zw==
X-Google-Smtp-Source: APXvYqzmDOqcAQ6oBrnfI42eLXT2C2AHBWGW4T4Rl7fUDrWZRioNxRBnW6c5h81++Ys7ziW2zHa0fA==
X-Received: by 2002:a62:e117:: with SMTP id q23mr62836433pfh.60.1558119178287; 
 Fri, 17 May 2019 11:52:58 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b32sm10177599pgm.87.2019.05.17.11.52.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:52:57 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190517064254.95561-1-hare@suse.de>
 <20190517064254.95561-4-hare@suse.de>
 <12b86c1a-9e83-f3b7-d72b-20eef528ab06@broadcom.com>
 <69ca35ef-1c40-03bd-b116-09dc3eb655aa@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <04b95971-5ea3-a2a7-92f9-841f585eb34a@broadcom.com>
Date: Fri, 17 May 2019 11:52:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <69ca35ef-1c40-03bd-b116-09dc3eb655aa@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_115259_584157_6221D3F1 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzE3LzIwMTkgMTE6MzQgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPiBPbiA1LzE3
LzE5IDY6MTAgUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+PiBPbiA1LzE2LzIwMTkgMTE6NDIgUE0s
IEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9mYy5jIGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+Pj4gaW5kZXggZTVjODFiYTJiN2ExLi5h
OGVmNjI1MTJkOWEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4+PiAr
KysgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4+PiBAQCAtMjcyNiw2ICsyNzM0LDEzIEBAIG52
bWVfZmNfY3JlYXRlX2Fzc29jaWF0aW9uKHN0cnVjdCAKPj4+IG52bWVfZmNfY3RybCAqY3RybCkK
Pj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCBjaGFuZ2VkID0gbnZtZV9jaGFuZ2VfY3Ry
bF9zdGF0ZSgmY3RybC0+Y3RybCwgTlZNRV9DVFJMX0xJVkUpOwo+Pj4gK8KgwqDCoCBpZiAoIWNo
YW5nZWQgJiYgY3RybC0+Y3RybC5zdGF0ZSAhPSBOVk1FX0NUUkxfREVMRVRJTkcpIHsKPj4+ICvC
oMKgwqDCoMKgwqDCoCBkZXZfZXJyKGN0cmwtPmN0cmwuZGV2aWNlLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIk5WTUUtRkN7JWR9OiBlcnJvcl9yZWNvdmVyeTogQ291bGRuJ3QgY2hhbmdl
ICIKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJzdGF0ZSBmcm9tICVzIHRvIExJVkVcbiIs
IGN0cmwtPmNudW0sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2N0cmxfc3RhdGVf
bmFtZSgmY3RybC0+Y3RybCkpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUFHQUlOOwo+
Pj4gK8KgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgIGN0cmwtPmN0cmwubnJfcmVjb25uZWN0cyA9IDA7
Cj4+Cj4+IFNvcnJ5LCBJIHNob3VsZCBoYXZlIHNwb3R0ZWQgdGhpcyBsYXN0IHRpbWUuwqDCoCBX
ZSBzaG91bGRuJ3QgYmUgCj4+IGV4aXRpbmcgaW4gdGhlIGJhZCBjYXNlIC0gd2Ugc2hvdWxkIGJl
IHNldHRpbmcgcmV0PS1FQUdBSU4gdGhlbiBoYXZlIAo+PiBhIGdvdG8gb3V0X3Rlcm1fYWVuX29w
cyBzbyB0aGF0IHdoYXRldmVyIHdhcyBidWlsdCB1cCBmb3IgdGhlIAo+PiBhc3NvY2lhdGlvbiBp
cyB0b3JuIGRvd24uCj4+Cj4gSSBfYWN0dWFsbHlfIGRpZCBkbyB0aGF0IG9uIHB1cnBvc2U7IEkg
ZGlkIGFzayBtZSB0aGUgdmVyeSBzYW1lIHF1ZXN0aW9uLgo+IFJlYXNvbmluZyB3YXMgdGhhdCB0
aGlzIGlzIHRoZSBmaW5hbCBzdGVwLCBhbmQgcmV2ZXJ0aW5nIHRoaXMgd291bGQgCj4gYW1vdW50
IHRvIGEgZnVsbCByZXNldC4gSGVuY2Ugd2UgY291bGQganVzdCByZXR1cm4gYW4gZXJyb3IsIGFu
ZCBsZXQgCj4gdGhlIHJlc2V0IGhhbmRsZSB0aGluZ3MuIEVzcGVjaWFsbHkgYXMgd2UgZG8gbm90
IGNsZWFyIHRoZSByZWNvbm5lY3QgCj4gY291bnRlciBoZXJlLgo+IEFtIEkgd3Jvbmc/Cj4KClll
cywgcGFydGx5IG5vLsKgwqDCoCBObywgaW4gdGhhdCB0ZWFyaW5nIGRvd24gd2hhdCB5b3UgYnVp
bHQgdXAgZm9yIHRoZSAKYXNzb2NpYXRpb24gd2lsbCBiZSBzaW1pbGFyIHRvIHRoZSBhY3Rpb24g
b2YgYSByZXNldCBidXQgdGhlIHByb2JsZW0gaXMgCi0gdGhlIGFzc29jaWF0aW9uIGNyZWF0ZSBl
eHBlY3RlZCB0aGF0ICJ0ZWFyZG93biIgdG8gaGF2ZSBoYXBwZW5lZCAKYmVmb3JlIGl0IHJ1bnMu
IEluIHRoaXMgbmV3IGNhc2UsIGRhdGEgc3RydWN0dXJlcyBhcmUgbGVmdCBidWlsdCB1cCwgCnF1
ZXVlcyBsaXZlLCBmbGFncyBsaXZlLCB5ZXQgdGhlIGNvbnRyb2xsZXIgYnkgc3RhdGUgaXMgaW4g
bGltYm8uwqAgQWZ0ZXIgCnRoZSBmYWlsdXJlIHJldHVybiwgYWxsIHRoYXQgaGFwcGVucyBpbiB0
aGUgdHJhbnNwb3J0IHNjaGVkdWxlcyBhIApjb25uZWN0IHRpbWVvdXQuIFdoZW4gdGhlIHRpbWVv
dXQgb2NjdXJzIGl0IHdpbGwgYXR0ZW1wdCB0byByZWJ1aWxkIApldmVyeXRoaW5nIHRoYXQgaXMg
YWxyZWFkeSBpbiBwbGFjZS4gVGhlcmUgd2lsbCBiZSBubyBhdHRlbXB0IHRvIAp0ZXJtaW5hdGUg
dGhlIHByaW9yIGFzc29jaWF0aW9uIHlvdSBsZWZ0IGxpdmUgYW5kIEkgaGF2ZSBubyBpZGVhIHdo
YXQgCnNvbWUgb2YgdGhlIHJlYWxsb2NhdGlvbiBwYXRocyB3aWxsIGRvIHdoZW4gdGhleSBzdGFy
dCBidWlsZGluZyB1cCBvbiAKdGhpbmdzIGFscmVhZHkgbGl2ZS4gQXQgYmVzdCB0aGV5IGp1c3Qg
b3ZlcmxheSBhbmQgd2UgaGF2ZSBsZWFrcyAtIEkgCmRvbid0IGtub3cuIFlvdSd2ZSBjcmVhdGVk
IGEgdmVyeSBuZXcgYW5kIHVuaXF1ZSBwYXRoIGJ5IHJldHVybmluZy7CoCAKRG9uJ3QgZG8gdGhh
dC4KCi0tIGphbWVzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
