Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D99517253A
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 18:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJdXP/+3+T8auO85kPVOPmN1e4L3qRrwvimnnGU0IGI=; b=GFjAf5bOK1Omv1
	ceHjNqTGCdwEmtoaBoDTP88F+m8ahxeLNehg0W+MQSzN2p8aAlE9+wCmECrlKwnfbvCq5gdu9g4sj
	9Urbpl4AXUAOAciHpRFrxUt+4SM9lnIIUw1ZcRjk8DzES8UdizX0j/9j2Ehmxjo04geNXGJFWpWVL
	ITCPIen+KWr9hAM57yx5JX5jde9VvMv5HiSbiRRN19JWljT5ox30BxybAaHBa7190KCh/lzKNbBiJ
	K8tHqvpasrkNxFuyRrwvsNRd1v5U3tqffhxqptwUQGkyGeKcPObXn52/BFh9OERbdvPgkBpU0rAJL
	7DQKzU1Jl7bPzmXOPwyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N6M-0006Yl-H1; Thu, 27 Feb 2020 17:37:34 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N6H-0006YC-D5
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 17:37:30 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1j7N6B-00040E-8O; Thu, 27 Feb 2020 10:37:23 -0700
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200220203652.26734-1-logang@deltatee.com>
 <20200220203652.26734-9-logang@deltatee.com>
 <96234649-fbc1-fb56-54d8-2f73dc455ffd@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <9c6355d8-cf4e-9932-1cef-0a7140f0fa7e@deltatee.com>
Date: Thu, 27 Feb 2020 10:37:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <96234649-fbc1-fb56-54d8-2f73dc455ffd@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com,
 Chaitanya.Kulkarni@wdc.com, axboe@fb.com, kbusch@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_FREE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v11 8/9] nvmet-passthru: Add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093729_444930_5660B78E 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLTAyLTI2IDQ6MzMgcC5tLiwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiAKPj4gK8Kg
wqDCoCBpZiAoc3Vic3lzLT52ZXIgPCBOVk1FX1ZTKDEsIDIsIDEpKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBwcl93YXJuKCJudm1lIGNvbnRyb2xsZXIgdmVyc2lvbiBpcyB0b28gb2xkOiAlZC4lZC4l
ZCwKPj4gYWR2ZXJ0aXNpbmcgMS4yLjFcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChp
bnQpTlZNRV9NQUpPUihzdWJzeXMtPnZlciksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChp
bnQpTlZNRV9NSU5PUihzdWJzeXMtPnZlciksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChp
bnQpTlZNRV9URVJUSUFSWShzdWJzeXMtPnZlcikpOwo+PiArwqDCoMKgwqDCoMKgwqAgc3Vic3lz
LT52ZXIgPSBOVk1FX1ZTKDEsIDIsIDEpOwo+IAo+IFVtbS4uIGlzIHRoaXMgT0s/IGRvIHdlIGlt
cGxlbWVudCB0aGUgbWFuZGF0b3J5IDEuMi4xIGZlYXR1cmVzIG9uIGJlaGFsZgo+IG9mIHRoZSBw
YXNzdGhydSBkZXZpY2U/CgpUaGlzIHdhcyB0aGUgYXBwcm9hY2ggdGhhdCBDaHJpc3RvcGggc3Vn
Z2VzdGVkLiBJdCBzZWVtZWQgc2Vuc2libGUgdG8KbWUuIEhvd2V2ZXIsIGl0IHdvdWxkIGFsc28g
KnByb2JhYmx5KiBiZSBvayB0byBqdXN0IHJlamVjdCB0aGVzZQpkZXZpY2VzLiBVbmxlc3MgeW91
IGZlZWwgc3Ryb25nbHkgYWJvdXQgdGhpcywgSSdsbCBwcm9iYWJseSBsZWF2ZSBpdCB0aGUKd2F5
IGl0IGlzLgoKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBtdXRleF91bmxvY2soJnN1YnN5
cy0+bG9jayk7Cj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+ICsKPj4gK291dF9wdXRfY3RybDoKPj4g
K8KgwqDCoCBudm1lX3B1dF9jdHJsKGN0cmwpOwo+PiArb3V0X3VubG9jazoKPj4gK8KgwqDCoCBt
dXRleF91bmxvY2soJnN1YnN5cy0+bG9jayk7Cj4+ICvCoMKgwqAgcmV0dXJuIHJldDsKPj4gK30K
Pj4gKwo+PiArc3RhdGljIHZvaWQgX19udm1ldF9wYXNzdGhydV9jdHJsX2Rpc2FibGUoc3RydWN0
IG52bWV0X3N1YnN5cyAqc3Vic3lzKQo+PiArewo+PiArwqDCoMKgIGlmIChzdWJzeXMtPnBhc3N0
aHJ1X2N0cmwpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHhhX2VyYXNlKCZwYXNzdGhydV9zdWJzeXN0
ZW1zLCBzdWJzeXMtPnBhc3N0aHJ1X2N0cmwtPmNudGxpZCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBu
dm1lX3B1dF9jdHJsKHN1YnN5cy0+cGFzc3RocnVfY3RybCk7Cj4+ICvCoMKgwqAgfQo+PiArwqDC
oMKgIHN1YnN5cy0+cGFzc3RocnVfY3RybCA9IE5VTEw7Cj4+ICvCoMKgwqAgc3Vic3lzLT52ZXIg
PSBOVk1FVF9ERUZBVUxUX1ZTOwo+PiArfQo+IAo+IElzbid0IGl0IHN0cmFuZ2UgdGhhdCBhIHN1
YnN5c3RlbSBjaGFuZ2VzIGl0cyB2ZXJzaW9uIGluIGl0cyBsaWZldGltZT8KCkl0IGRvZXMgc2Vl
bSBzdHJhbmdlLiBIb3dldmVyLCBpdCdzIG5vdCBhdCBhbGwgdW5wcmVjZWRlbnRlZC4gU2VlCm52
bWV0X3N1YnN5c19hdHRyX3ZlcnNpb25fc3RvcmUoKSB3aGljaCBnaXZlcyB0aGUgdXNlciBkaXJl
Y3QgY29udHJvbCBvZgp0aGUgdmVyc2lvbiB0aHJvdWdoIGNvbmZpZ2ZzLgoKPj4gKwo+PiArdm9p
ZCBudm1ldF9wYXNzdGhydV9jdHJsX2Rpc2FibGUoc3RydWN0IG52bWV0X3N1YnN5cyAqc3Vic3lz
KQo+PiArewo+PiArwqDCoMKgIG11dGV4X2xvY2soJnN1YnN5cy0+bG9jayk7Cj4+ICvCoMKgwqAg
X19udm1ldF9wYXNzdGhydV9jdHJsX2Rpc2FibGUoc3Vic3lzKTsKPj4gK8KgwqDCoCBtdXRleF91
bmxvY2soJnN1YnN5cy0+bG9jayk7Cj4+ICt9Cj4+ICsKPj4gK3ZvaWQgbnZtZXRfcGFzc3RocnVf
c3Vic3lzX2ZyZWUoc3RydWN0IG52bWV0X3N1YnN5cyAqc3Vic3lzKQo+PiArewo+PiArwqDCoMKg
IG11dGV4X2xvY2soJnN1YnN5cy0+bG9jayk7Cj4+ICvCoMKgwqAgX19udm1ldF9wYXNzdGhydV9j
dHJsX2Rpc2FibGUoc3Vic3lzKTsKPj4gK8KgwqDCoCBrZnJlZShzdWJzeXMtPnBhc3N0aHJ1X2N0
cmxfcGF0aCk7Cj4+ICvCoMKgwqAgbXV0ZXhfdW5sb2NrKCZzdWJzeXMtPmxvY2spOwo+IAo+IE5p
dCwgYW55IHJlYXNvbiB3aHkgdGhlIGZyZWUgaXMgaW4gdGhlIG11dGV4PwoKTm9wZS4gV2lsbCBm
aXguCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
