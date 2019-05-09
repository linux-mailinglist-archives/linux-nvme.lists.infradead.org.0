Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA218D22
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 17:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iwumiupM5AVJRmsddaXMia/e7AfGiskBaPgEZgsHmUg=; b=HqEV51IHCVfIIpS8xsrc6EYL8
	IF5wjEdGtZps63vl9O9CorMmT6ydNufTv1J7jgZkCMb0mTD4iEMx+RunE4jhEEqqhUXbnYp/V6csE
	/mKg5+SgrHhzr1JoajLlLksFDHEna279Og+0s8GyhwylFNU4C/uUtkd4/bsBjaaF+09x2aWWSfTG0
	BwnnKeyMP9P2FpPvtIsprcVWX89gm0GoRILTPeG9yrF0XydWgixYI0aRbWhirukU64YuN+IcRrNiK
	oB+2UqzWGqtAWdFbsg09dEVbQADUK6qoEbEXrDqF2HS5LJTYkld+nwhz/ptAELU3QclQZhoVlHKhn
	eqQ0136Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOl9r-0001To-Bd; Thu, 09 May 2019 15:40:31 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOl9l-0001TO-Jr
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 15:40:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B62B8AD5A;
 Thu,  9 May 2019 15:40:22 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 5/5] nvmf auto-connect scripts
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-6-jsmart2021@gmail.com>
 <fd4af817-3a90-380b-b485-81b44c12c8e9@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6f54cdf9-bd99-8cd4-1981-a9db4970c1be@suse.de>
Date: Thu, 9 May 2019 17:40:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fd4af817-3a90-380b-b485-81b44c12c8e9@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_084025_986021_AFB18987 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS83LzE5IDEwOjI2IFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiAKPj4gKyMgRXZlbnRzIGZy
b20gcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxlcnMgb3IgbnZtZS1mYyB0cmFuc3BvcnQg
Cj4+IGV2ZW50cwo+PiArQUNUSU9OPT0iY2hhbmdlIiwgU1VCU1lTVEVNPT0ibnZtZSIsIEVOVntO
Vk1FX0VWRU5UfT09ImRpc2NvdmVyeSIsXAo+PiArwqAgRU5We05WTUVfQ1RMUl9OQU1FfT09Iioi
LCBFTlZ7TlZNRV9UUlRZUEV9PT0iKiIsIAo+PiBFTlZ7TlZNRV9UUkFERFJ9PT0iKiIsIFwKPj4g
K8KgIEVOVntOVk1FX1RSU1ZDSUR9PT0iKiIsIEVOVntOVk1FX0hPU1RfVFJBRERSfT09IioiLCBc
Cj4+ICvCoCBSVU4rPSIvdXNyL2Jpbi9zeXN0ZW1jdGwgLS1uby1ibG9jayBzdGFydCAKPj4gbnZt
Zi1jb25uZWN0QC0tZGV2aWNlPSRlbnZ7TlZNRV9DVExSX05BTUV9XHQtLXRyYW5zcG9ydD0kZW52
e05WTUVfVFJUWVBFfVx0LS10cmFkZHI9JGVudntOVk1FX1RSQUREUn1cdC0tdHJzdmNpZD0kZW52
e05WTUVfVFJTVkNJRH1cdC0taG9zdC10cmFkZHI9JGVudntOVk1FX0hPU1RfVFJBRERSfS5zZXJ2
aWNlIiAKPj4KPj4gKwo+PiArIyBudm1lLWZjIHRyYW5zcG9ydCBnZW5lcmF0ZWQgZXZlbnRzIChv
bGQtc3R5bGUgZm9yIGNvbXBhdGliaWxpdHkpCj4+ICtBQ1RJT049PSJjaGFuZ2UiLCBTVUJTWVNU
RU09PSJmYyIsIEVOVntGQ19FVkVOVH09PSJudm1lZGlzY292ZXJ5IiwgXAo+PiArwqAgRU5We05W
TUVGQ19IT1NUX1RSQUREUn09PSIqIizCoCBFTlZ7TlZNRUZDX1RSQUREUn09PSIqIiwgXAo+PiAr
wqAgUlVOKz0iL3Vzci9iaW4vc3lzdGVtY3RsIC0tbm8tYmxvY2sgc3RhcnQgCj4+IG52bWYtY29u
bmVjdEAtLWRldmljZT1ub25lXHQtLXRyYW5zcG9ydD1mY1x0LS10cmFkZHI9JGVudntOVk1FRkNf
VFJBRERSfVx0LS10cnN2Y2lkPW5vbmVcdC0taG9zdC10cmFkZHI9JGVudntOVk1FRkNfSE9TVF9U
UkFERFJ9LnNlcnZpY2UiIAo+Pgo+Pgo+IAo+IEkgYXNzdW1lLCB0aGF0IHdlIHNob3VsZCBiZSBh
ZGRpbmcgLS1xdWlldCB0byB0aGUgYWJvdmUgbGluZXMuwqAgTm8gbmVlZCAKPiB0byBnZXQgaXQg
ZnJvbSB0aGUgZXZlbnQuwqAgQWdyZWUgPwo+IAo+IEFuZCB3ZSB3b3VsZCBub3QgYWRkIC0tcGVy
c2lzdGVudC7CoMKgIFdoaWNoIG1ha2VzIG1lIGFzc3VtZSAtLXBlcnNpc3RlbnQgCj4gd291bGQg
YmUgbGVmdCB0byBtYW51YWwvc2NyaXB0ZWQgY2FsbHMgb3IgcG9zc2libHkgcHVsbGVkIGluIGJ5
IHRoZSBzZQo+ICJkZWZhdWx0cyIgZmlsZSB3ZSB3ZXJlIGRpc2N1c3NpbmcuwqDCoMKgIFNvLCB0
aGUgbGludXggcG9saWN5IGlzIG91ciAKPiBkZWZhdWx0IGRpc2NvdmVyeSBjb250cm9sbGVyIGlz
IG5vbi1wZXJzaXN0ZW50IGFuZCByZXF1aXJlcyBhZG1pbiAKPiBhY3Rpb25zIHRvIGVuYWJsZSB0
aGUgcGVyc2lzdGVudCBvcHRpb24gLSBhcyBvcHBvc2VkIHRvIC0gbG9va2luZyBhdCAKPiBJZGVu
dGlmeUNvbnRyb2xsZXI6S0FTIHRvIGRlY2lkZSBpZiBLQVRPIGlzIHN1cHBvcnRlZCwgYW5kIGlm
IHNvLCBtYWtlIAo+IHRoZSBjb25uZWN0aW9uIHBlcnNpc3RlbnQgPwo+IApEaWRuJ3Qgd2UgZGlz
Y3VzcyB0aGlzIGluIGFub3RoZXIgdGhyZWFkPwpNeSBwcmVmZXJyZWQgd29ya2Zsb3cgd291bGQg
YmUgdG8gY3JlYXRlIHRoZSBwZXJzaXN0ZW50IGRpc2NvdmVyeSAKY29ubmVjdGlvbiBkdXJpbmcg
c3RhcnR1cCAoYnkgZWcgYSBzeXN0ZW0gc2VydmljZSBvciB3aGF0IGhhdmUgeW91KSwKYW5kIGhh
dmUgdGhlIHVldmVudCB1c2luZyB0aGF0IGNvbm5lY3Rpb24uCkNvbnNlcXVlbnRseSwgSSB3b3Vs
ZCBmaWxsIGluIGEgcmVhbCBkZXZpY2UgbmFtZSB3aXRoIHRoZSAtLWRldmljZSAKb3B0aW9uIGFi
b3ZlLgoKWWVzLCB0aGlzIHdvdWxkIGJlIG9wZW4gdG8gcmFjZSBjb25kaXRpb25zIChpZSBzb21l
b25lIG1pZ2h0IGdvIGFoZWFkIAphbmQgcmUtY3JlYXRlIHRoZSBkZXZpY2Ugd2l0aCBhIGRpZmZl
cmVudCBjb25uZWN0aW9uIGJlZm9yZSB0aGUgZXZlbnQgaXMgCnByb2Nlc3NlZCksIGJ1dCB5b3Ug
ZGlkbid0IGxpa2UgbXkgYXJndW1lbnQgdG8gc2tpcCB0aGUgLS1kZXZpY2UgY2FsbCAKYW5kIGhh
dmUgbnZtZS1jbGkgbWF0Y2ggb24gZXhpc3RpbmcgZGlzY292ZXJ5IGNvbm5lY3Rpb25zIC4uLiBh
bmQgaWYgd2UgCmRvbid0IGNoZWNrIGZvciB0aGUgY29ubmVjdGlvbiBpbiBudm1lLWNsaSB3ZSds
bCBhbHdheXMgaGF2ZSB0aGF0LgoKQW5kIGl0IGZlZWxzIHJlYWxseSBzdHVwaWQsIHRvIGhhdmUg
YSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb25uZWN0aW9uIApfanVzdF8gZm9yIEFFTnMsIGFuZCB0
aGVuIGhhdmUgbnZtZS1jbGkgY3JlYXRlIF9hbm90aGVyXyBjb25uZWN0aW9uIHdoZW4gCnByb2Nl
c3NpbmcgdGhlIGV2ZW50LgpUaGF0IHJlYWxseSBpcyBhIHdhc3RlIG9mIHJlc291cmNlcy4KCkNo
ZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFk
IFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3Jp
IFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
