Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B4C5D0AB
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 15:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqVxtXiznQD/XxgM+sRfvQLboXOxgSUimL6KFlqXYT4=; b=SVva2jG+2I6UcP
	cvPub69bINE3/QDsWAbxIzlaAINRWp7Egnes8HocbmIjk+sSz0EEokI0HfU2FMSlQos05ILugzpzz
	TJllnXWhX2w78YlFRwCP+P9l+M153hyJiy93qZgD2sn56/xQ/qXQN8JmTxwPxVtM20ZUzX4FmVEIP
	38bOu/NVA5V89jFX4r0PijNVgq1TNCVNNWFSJwK/81voGx+Xsrkp5Oaye7rvFURmAlmxWR6Hxf3ly
	QRJcv3l9LLS8P2ydgUCFDh9703Wexw+Ddi9dLlSRlwytV3oi3lmEtNuKsntcW2i8UCuEiFkPe1eFO
	pbPkEa2IDjdkUKB35SKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIqc-00087w-4F; Tue, 02 Jul 2019 13:29:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIqT-00087Q-MN
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 13:29:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AFE75B722;
 Tue,  2 Jul 2019 13:29:14 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
 <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
 <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
 <04a61807-ed2c-c91a-6eeb-c3df864fedc4@suse.de>
 <c73a67c6-719a-78a8-98b0-5679d08a115f@grimberg.me>
 <0a1029ce-c140-f51e-9402-b98483f0b9e9@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <50ea4b22-75e8-2296-ffc5-f538e492da8b@suse.de>
Date: Tue, 2 Jul 2019 15:29:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <0a1029ce-c140-f51e-9402-b98483f0b9e9@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062918_021855_754A3EDB 
X-CRM114-Status: GOOD (  14.05  )
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yLzE5IDc6MzggQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+PiBIbW0uIE5vdCBz
dXJlIGlmIHRoYXQgaXMgc3VmZmljaWVudCwgdGhvdWdoLgo+Pj4gV2UgZG8gaXNzdWUgc2V2ZXJh
bCBJL08gaW4gdGhlIGNvdXJzZSBvZiBudm1lX3JldmFsaWRhdGVfZGlzaygpLCBhbmQKPj4+IGFz
IHdlJ3JlIHJ1bm5pbmcgZnVsbHkgYXN5bmNocm9ub3VzIGhlcmUgdGhlIGRpc2sgbWlnaHQgYmUg
cmVtb3ZlZCBhdAo+Pj4gYW55IGdpdmVuIHRpbWUuIENmIHRoZSBhYm92ZSBzdGFjayB0cmFjZTsg
d2UncmUgZ2V0dGluZyBhbiBlcnJvciBmb3IKPj4+IHRoZSBfc2Vjb25kXyBJL08gKG52bWVfaWRl
bnRpZnlfbnMgaXMgaXNzdWluZyBJL08sIHRvbywgYnV0IHdlbnQKPj4+IHRocm91Z2ggd2l0aG91
dCBlcnJvcnMpLgo+Pgo+PiBJdHMgbm90IHByb3RlY3RpbmcgYWdhaW5zdCB0aGUgSS9PLCBidXQg
cmF0aGVyIGFnYWluc3QgcXVldWUgZnJlZXplLgo+Pgo+Pj4gU28gaWYgd2Ugd2VyZSB0byBnbyB0
aGF0IHJvdXRlIHdlJ2QgbmVlZCB0byBwcm90ZWN0IGVhY2ggYW5kIGV2ZXJ5Cj4+PiBJL08gd2l0
aCB0aGF0IHRlc3QuCj4+Cj4+IFdoeT8KPiAKPiBIYW5uZXM/CgpBaCwgcmlnaHQuCgpTbywgSSBo
YWQgYmVlbiBvcGVyYXRpbmcgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCB3ZSBjcmFzaCBkdWUg
dG8gYW4KaW52YWxpZCBuYW1lc3BhY2UgYWNjZXNzIHdoZW4gZG9pbmcgSS9PIHdpdGggdGhlIHJl
c2NhbiB0aHJlYWQuCllvdXIgYXNzdW1wdGlvbiBpcyBzbGlnaHRseSBkaWZmZXJlbnQsIG5hbWVs
eSB0aGF0IHRoZSBzY2FuIHRocmVhZCBpcwpjcmFzaGluZyB0cnlpbmcgdG8gcXVpZXNjZSBJL08s
IGJ1dCBub3JtYWwgSS9PIHdvdWxkIGhhbmRsZWQganVzdCBmaW5lLgoKSSdsbCBzZWUgdG8gZ2l2
ZSB5b3VyIHBhdGNoIGEgc3Bpbiwgd2lsbCBsZXQgeW91IGtub3cgdGhlIHJlc3VsdHMuCgpDaGVl
cnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2Ug
JiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMg
Njg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFH
IE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
