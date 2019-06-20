Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67EC4C791
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 08:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUdRsweiLn5O0Q6bYhJq23xMyxUhnpZ6C18wZVVV8xc=; b=LbmP+P6xy/dnHs
	DfGIdZf4pE7oKFWIk4TlWe7K2RjtpJkTIraw4Ntw7BoY18my+MAYH4pkeRqp0WWrciY9/i9NziU1v
	3i0Ry+G6/K6sH4j2j9a1HZint/BuZronWFxuvODkx+Mv22ozfNK83J/6WfXPlqUeI695tCzgLSuLd
	nvmaXqiettAQx6HhdxyYt/td6iRTEHTr2CGnT+XdW07KI4MNz0Msy9bz35h2kIhoiTzhXnfbQn/4t
	rIR6qkZ3QeYTebxR5ozCNIlvvIq7IfxECwZWbJoz7bDA3qCvVgCTCV94pPF0DHkioNbRnqxqy0tuR
	UcEaWx7/f6cOHTzcz93g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqjB-0005Gq-25; Thu, 20 Jun 2019 06:39:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hdqj5-0005Gh-Hk; Thu, 20 Jun 2019 06:39:15 +0000
Date: Wed, 19 Jun 2019 23:39:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: John Donnelly <john.p.donnelly@oracle.com>
Subject: Re: Use of WARN in nvme subssytem.
Message-ID: <20190620063915.GA13586@infradead.org>
References: <82D7EABA-733D-4CBF-BCD6-E8EA51C2B220@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82D7EABA-733D-4CBF-BCD6-E8EA51C2B220@oracle.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMDk6MTY6MDFBTSAtMDUwMCwgSm9obiBEb25uZWxseSB3
cm90ZToKPiBIaSwKPiAKPiBUaGVyZSBpcyBhcHByb3hpbWF0ZWx5IDcyIG9jY3VycmVuY2VzIG9m
IFdBUk4qICBpbiB0aGUgZHJpdmVyL252bWUgbW9kdWxlcyBpbiA1LjIucmMuICBJZiB0aGUgc3lz
dGVtIGlzIGNvbmZpZ3VyZWQgd2l0aCB0aGUgb3B0aW9uIOKAnHBhbmljX29uX3dhcm7igJ0gdGhl
IHN5c3RlbSB3aWxsIHJlYm9vdC4gIEFyZSBhbGwgb2YgIHRoZXNlIHdhcm5pbmdzIG5lY2Vzc2Fy
eSA/IEkgYW0gc3VyZSBtYW55IGNvdWxkICBiZSBjb252ZXJ0ZWQgdG8gbG9nIGVudHJpZXMgd2l0
aCBtb3JlIGluZm9ybWF0aXZlIGNvbnRlbnQgZm9yIGFkbWluaXN0cmF0b3JzLiAKCk5lY2Vzc2Fy
eSBpcyBpbiB0aGUgZXllIG9mIHRoZSBiZWhvbGRlciwgYnV0IHRoZXkgZG8gaGF2ZSBhIHZlcnkg
dmFsaWQKdXNlIGNhc2UgdG8gcG9pbnQgb3V0IHNob3VsZCBub3QgaGFwcGVuIHNjZW5hcmlvcywg
d2hpY2ggaXMgd2hhdCBXQVJOKgppcyBmb3IuICBPVE9IIHBhbmljX29uX3dhcm4gaXMgZ2VuZXJh
bGx5IGJhdCBzaGl0IGNyYXp5LCBzbyB5b3UgZ2V0IHdoYXQKeW91IGFzayBmb3IuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
