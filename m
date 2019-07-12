Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C8467109
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 16:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps1AVeFAdJn09jvtmOT/xXAXiz+U+U3YXMnQMAuZ0Xg=; b=MGmLiYECplIA7l
	n7zRRudKxIGlV85mt5B3y8gnBLLoBfudAFl9i0yF/z4VO/GSEqChR/nQqx8BOxaBZUsSZrJOVF/tw
	zxADpB8ZJLEE0poi8EjhZAEPcrUSOMMbpmnZKE1dUfQ/bplNgDwXe8Y6vRkBfH6Y6MH3zkG1elcqh
	0zBa8hMFArI/k87p5ym8/nXq+27I9oF665CRWKFCj+8zf4WnmDv7y6HLZCmJYUHhqM/LRS9ZCQfP6
	Aygm4Z8uVwgpLcI9NLU+1eIkCtQaNfClQ9HiK9eYpAY2d5fy4s2m/tvzdyfk4xHEG9r70LgqjjN4Y
	EyWD5g7lE3JHECGoLEJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwGI-0007OK-Ke; Fri, 12 Jul 2019 14:10:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwG5-0007Eb-6T
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 14:10:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D4BC9B024;
 Fri, 12 Jul 2019 14:10:37 +0000 (UTC)
Subject: Re: [PATCH rfc v2 08/10] nvme-cli: Expand --device argument processing
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-9-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <6699bf8a-b78e-ed9f-e579-e4f96440b5f9@suse.de>
Date: Fri, 12 Jul 2019 16:10:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-9-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_071045_540778_7119F951 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xMi8xOSAyOjMxIEFNLCBKYW1lcyBTbWFydCB3cm90ZToKPiBUaGUgY29ubmVjdC1hbGwg
LS1kZXZpY2UgYXJndW1lbnQgd2FzIHVzZWQgdG8gc3BlY2lmeSBhIHNwZWNpZmljIGRldmljZQo+
IHRvIGJlIHVzZWQgYXMgdGhlIGRpc2NvdmVyeSBjb250cm9sbGVyLiBUaGUgZGV2aWNlIGlzIHR5
cGljYWxseSBhCj4gbG9uZy1saXZlZCBkaXNjb3ZlcnkgY29udHJvbGxlciB0aGF0IHBvc3RlZCBh
IGRpc2NvdmVyeSBldmVudC4KPiBObyBhdHRlbXB0IHdhcyBtYWRlIHRvIGVuc3VyZSB0aGUgZGV2
aWNlIGlzIHdobyBpdCBpcyBzdXBwb3NlZCB0byBiZQo+IGJlZm9yZSB1c2luZyBpdC4KPiAKPiBS
ZXZpc2VkIHRoZSBjb2RlIHRvIHVzZSB0aGUgb3RoZXIgYXJndW1lbnRzIGluIHRoZSBjb25uZWN0
LWFsbCByZXF1ZXN0Cj4gdG8gdmFsaWRhdGUgdGhhdCB0aGUgZGV2aWNlIGlzIHRoZSBlbnRpdHkg
dGhhdCB3YXMgZXhwZWN0ZWQuIElmIHRoZQo+IGRldmljZSBkb2Vzbid0IG1hdGNoLCB0aGUgY2xp
IHdpbGwgbG9vayBmb3IgYW4gZXhpc3RpbmcgbWF0Y2hpbmcgZGV2aWNlCj4gaW4gdGhlIHN5c3Rl
bSAoc2hvdWxkIGJlIGEgZGlzY292ZXJ5IGNvbnRyb2xsZXIgZHVlIHRvIG5xbikgd2l0aCB0aGUK
PiBzYW1lIGNvbm5lY3QgcGFyYW1ldGVycyBhbmQgdXNlIGl0LiAgSWYgb25lIGlzIG5vdCBmb3Vu
ZCBvbiB0aGUgc3lzdGVtLAo+IGEgbmV3IGRpc2NvdmVyeSBjb250cm9sbGVyIHdpbGwgYmUgY3Jl
YXRlZCBmb3IgdGhlIGNvbm5lY3QtYWxsIHJlcXVlc3QuCj4gCj4gVGhlIHJldmlzaW9uIHVzZXMg
bmV3IHJvdXRpbmVzIHRvIHBhcnNlIHRoZSBjb25uZWN0IGFyZ3VtZW50cyBnaXZlbgo+IGluIHRo
ZSBhcmdzdHIgcGFyYW1ldGVyLiBBcyBhIGNvdXBsZSBvZiBuZXcgZmllbGRuYW1lcyBhcmUgbmVl
ZGVkLCB0aGUKPiBwYXJzZSByb3V0aW5lIGNvbnN0YW50cyB3ZXJlIGV4cGFuZGVkIGZvciB0aGVt
Lgo+IAo+IFRoZSByZXZpc2lvbiB1c2VzIHRoZSBuZXcgcm91dGluZXMgdG8gbWF0Y2ggdGhlIHNw
ZWNpZmllZCBkZXZpY2UgdnMKPiBpdCdzIGF0dHJpYnV0ZXMgYXMgd2VsbCBhcyB0aGUgc2VhcmNo
IHJvdXRpbmUgdGhhdCBsb29rcyBmb3IgYSBkZXZpY2UKPiB3aXRoIHRoZSBjb25uZWN0IGFyZ3Vt
ZW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBTbWFydCA8anNtYXJ0MjAyMUBnbWFpbC5j
b20+Cj4gQ0M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gQ0M6IEhhbm5lcyBS
ZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KPiAtLS0KPiAgZmFicmljcy5jIHwgMzggKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgbnZtZS5jICAgIHwgIDIgKysKPiAgbnZt
ZS5oICAgIHwgIDIgKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspCj4gClJl
dmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMsCgpIYW5u
ZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3Jr
aW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0Ug
TElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVu
ZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVy
ZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
