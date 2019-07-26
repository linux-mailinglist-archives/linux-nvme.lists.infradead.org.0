Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B828E76E3E
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 17:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3zdMlHZH5dnKj/DieMeoN/p/JMjAtSUXl5h8Y0elGU=; b=uRdAC3Ru3ytUt1
	Y/h25P/41NH82bzS0uEtykmLrpZJhzNZLNO14jyIQJwi+xREgrOp4oG+XK7/KaVAhXHt5JJO/BRxG
	byAtz6dnIu0FW4FJT7xY9nOkM4anz/FORyBQIxj/X5LvgNYbXM0lAjC5ycGmLdDpQkTPWXRfTvb/i
	XW9oiN/4AzzBJyVcuMji3wljt0ylvN51locMbPihOHn4Z3jLs4BKVBpbxks+xTeWi91q26pAWKUoB
	qQ0WmvuZCiAS9pQsENsL3FDl3sVeWckf5FpDMmV0S/Ofwod87BDaMqOB+AO8I28oZdiVJzWBDKjWJ
	iHECow3+al6LLOlTXWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2Qx-0003Vw-Rg; Fri, 26 Jul 2019 15:47:03 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2Qq-0003Us-AW
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 15:46:57 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hr2Qh-0002Yy-EH; Fri, 26 Jul 2019 09:46:48 -0600
To: Sagi Grimberg <sagi@grimberg.me>, Al Viro <viro@zeniv.linux.org.uk>
References: <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
 <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
 <20190725235502.GJ1131@ZenIV.linux.org.uk>
 <7f48a40c-6e0f-2545-a939-45fc10862dfd@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <fce9d627-3bf7-2c63-dbdc-5b252792cc36@deltatee.com>
Date: Fri, 26 Jul 2019 09:46:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7f48a40c-6e0f-2545-a939-45fc10862dfd@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, maxg@mellanox.com, linux-fsdevel@vger.kernel.org,
 kbusch@kernel.org, linux-block@vger.kernel.org, sbates@raithlin.com,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com, axboe@fb.com, gregkh@linuxfoundation.org,
 willy@infradead.org, viro@zeniv.linux.org.uk, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_084656_697350_5FFF101A 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA3LTI1IDEwOjI5IHAubS4sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+Pj4+
Pj4+IE5WTWUtT0YgaXMgY29uZmlndXJlZCB1c2luZyBjb25maWdmcy4gVGhlIHRhcmdldCBpcyBz
cGVjaWZpZWQgYnkKPj4+Pj4+Pj4gdGhlCj4+Pj4+Pj4+IHVzZXIgd3JpdGluZyBhIHBhdGggdG8g
YSBjb25maWdmcyBhdHRyaWJ1dGUuIFRoaXMgaXMgdGhlIHdheSBpdAo+Pj4+Pj4+PiB3b3Jrcwo+
Pj4+Pj4+PiB0b2RheSBidXQgd2l0aCBibGtkZXZfZ2V0X2J5X3BhdGgoKVsxXS4gRm9yIHRoZSBw
YXNzdGhydSBjb2RlLAo+Pj4+Pj4+PiB3ZSBuZWVkCj4+Pj4+Pj4+IHRvIGdldCBhIG52bWVfY3Ry
bCBpbnN0ZWFkIG9mIGEgYmxvY2tfZGV2aWNlLCBidXQgdGhlIHByaW5jaXBhbAo+Pj4+Pj4+PiBp
cyB0aGUgc2FtZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFdoeSBpc24ndCBhIGZkIGJlaW5nIHBhc3NlZCBp
biB0aGVyZSBpbnN0ZWFkIG9mIGEgcmFuZG9tIHN0cmluZz8KPj4+Pj4+Cj4+Pj4+PiBJIHN1cHBv
c2Ugd2UgY291bGQgZWNobyBhIHN0cmluZyBvZiB0aGUgZmlsZSBkZXNjcmlwdG9yIG51bWJlciB0
aGVyZSwKPj4+Pj4+IGFuZCBsb29rIHVwIHRoZSBmZCBpbiB0aGUgcHJvY2VzcycgZmlsZSBkZXNj
cmlwdG9yIHRhYmxlIC4uLgo+Pj4+Pgo+Pj4+PiBBc3N1bWluZyB0aGF0IHRoZXJlIGlzIGEgb3Bl
biBoYW5kbGUgc29tZXdoZXJlIG91dCB0aGVyZS4uLgo+Pj4KPj4+IFllcywgdGhhdCB3b3VsZCBi
ZSBhIHN0ZXAgYmFja3dhcmRzIGZyb20gYW4gaW50ZXJmYWNlLiBUaGUgdXNlciB3b3VsZAo+Pj4g
dGhlbiBuZWVkIGEgc3BlY2lhbCBwcm9jZXNzIHRvIG9wZW4gdGhlIGZkIGFuZCBwYXNzIGl0IHRo
cm91Z2ggY29uZmlnZnMuCj4+PiBUaGV5IGNvdWxkbid0IGp1c3QgZG8gaXQgd2l0aCBiYXNpYyBi
YXNoIGNvbW1hbmRzLgo+Pgo+PiBGaXJzdCBvZiBhbGwsIHRoZXkgY2FuLCBidXQuLi4gV1RGIG5v
dCBoYXZlIGZpbHBfb3BlbigpIGRvbmUgcmlnaHQgdGhlcmU/Cj4+IFllcywgYnkgbmFtZS7CoCBX
aXRoIHBlcm1pc3Npb24gY2hlY2tzIGRvbmUuwqAgQW5kIHBpY2sgeW91ciBvYmplY3QgZnJvbQo+
PiB0aGUKPj4gc29kZGluZyBzdHJ1Y3QgZmlsZSB5b3UnbGwgZ2V0Lgo+Pgo+PiBXaGF0J3MgdGhl
IHByb2JsZW0/wqAgV2h5IGRvIHlvdSBuZWVkIGNkZXYgbG9va3VwcywgZXRjLiwgd2hlbiB5b3Ug
YXJlCj4+IGRlYWxpbmcgd2l0aCBmaWxlcyB1bmRlciB5b3VyIGZ1bGwgY29udHJvbD/CoCBKdXN0
IG9wZW4gdGhlbSBhbmQgdXNlCj4+IC0+cHJpdmF0ZV9kYXRhIG9yIHdoYXRldmVyIHlvdSBzZXQg
aW4gLT5vcGVuKCkgdG8gYWNjZXNzIHRoZSBkYW1uIHRoaW5nLgo+PiBBbGwgdGhlcmUgaXMgdG8g
aXQuLi4KPiBPaCB0aGlzIGlzIHNvIG11Y2ggc2ltcGxlci4gVGhlcmUgaXMgcmVhbGx5IG5vIHBv
aW50IGluIHVzaW5nIGFueXRoaW5nCj4gZWxzZS4gSnVzdCBuZWVkIHRvIHJlbWVtYmVyIHRvIGNv
bXBhcmUgZi0+Zl9vcCB0byB3aGF0IHdlIGV4cGVjdCB0byBtYWtlCj4gc3VyZSB0aGF0IGl0IGlz
IGluZGVlZCB0aGUgc2FtZSBkZXZpY2UgY2xhc3MuCgpZZXMsIHRoYXQgc291bmRzIGxpa2UgYSBn
b29kIGlkZWEuIEknbGwgZG8gdGhpcyBmb3IgdjIuCgpUaGFua3MsCgpMb2dhbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
