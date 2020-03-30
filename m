Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B953A197666
	for <lists+linux-nvme@lfdr.de>; Mon, 30 Mar 2020 10:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAuOfk18BuscQLAGyVWib11RcglTVecKTt+eURso09g=; b=nzKBRFOCyZpLAD
	XIB9tMMTa9HMG20Lb5HXrv8l2rmjfJiPQNmeVGeD0wcNgycU4LiteksBACTPXXKuf5Ussxev5lifi
	nyBLFVHoM+Kf1OuWV6Xo/14fZyKhrmGIO3GPmlsib+1uHNzcz8MZsciLG4Y/HSgqhpLeEKoBy0goV
	ptQMrRScX1TTw2O5HWVrasE0HdxxwsXBL8UtDiJv54sL+Jm+9Nq4IhPyWpKvjYzBhzdRQQSYARtSA
	H1U6lpm8ZSjomEh2hdqYJHWUK6iAZmxk3ML03MAiJwpTFtQGxl6ikVNAfUZLqy2iiHmNKQ4mlxQuN
	DVN/VJ0GdrVuS2LTl+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIplG-0007wN-2D; Mon, 30 Mar 2020 08:27:10 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIplA-0007vo-FM
 for linux-nvme@lists.infradead.org; Mon, 30 Mar 2020 08:27:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id c5so13406181lfp.5
 for <linux-nvme@lists.infradead.org>; Mon, 30 Mar 2020 01:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rsc-tech-ru.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wLqmZYQSghHmSuy1GwS3EIow4w3bo5uw7ZRCB1FpDCs=;
 b=TprybEtI6EZn1SaIK0ELfdSGwU9UuRJkNkHKuQd5j7dTo8iqjPy6Yo3fMIUbKLA1y6
 kLaV3O4AMqjO8R8tT9FZKzdmqhRF5Cl7DxrIypN7uzFyaqKUA6mAQQV8FM5k+2DrKV4D
 xiFTTyHbCZbo8ZgNwP4CmK3yh/JTl2b++5wWMci6F+MCJO3LS2DiOn1kbhE0vWldIsJL
 5jvhOq8GNeLSQkNN/90lo3VZUobmBHCutNQruuQ22EMxBw/Zov9VU+yEuonM8EBQIhta
 GkrM4n9CZf7fJ4I6DeDnOYQt13GmuZQn4kA28XuwFLT0T/D13W5Ssyz/YQHo7K55tTsr
 IekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wLqmZYQSghHmSuy1GwS3EIow4w3bo5uw7ZRCB1FpDCs=;
 b=AmlJM5Lj+UJVO6Cor9JHD8u3ZXPj+jwz4Z7s+1gRofZ7GP6g1I/iEBfbEUpBGdCiAa
 zja/RSwToyfwjfCXYRHweYRXmld7PjkYIpcu0UlypZtINQXgSuB4Sh60rr6CgluIobHO
 h+YWTTcKUKEOv3hP98fX0VkSME6Xg8Z6axKgofQmbu4Hxg/zNdstcQ5enS+KQ352Z5UT
 UJFOX6+Sf5sWfoF6b3oALxW7uZ3D32Z53/prbk0f3Lg2gLxcOoI/0jeVQBSEq/mv2liD
 o7S3eF0BXmEL2K7TzJy/Dw0lT+4lDZ6P3eodVc2Z/yOBJXEt31lFvmoImqfYs2QQYjA9
 hZ1w==
X-Gm-Message-State: AGi0Pubyz6IxOyP8UuKdUejMSYfwA8nJcNgABHO/9XCETmsDcA7r9eMi
 K1+ial5srMZK8uqeMzgaFoUuO+xTMU7w0TfOGUSbgg==
X-Google-Smtp-Source: APiQypKiaGoYbJlpMeaIwSH1atZhZwFgwzpJBKb85xDMN44W+w0ROBvalOeBtvxVPd1eFnVZvSpiyIdPDTkzOjr2NHg=
X-Received: by 2002:ac2:4309:: with SMTP id l9mr7287554lfh.65.1585556822600;
 Mon, 30 Mar 2020 01:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <CABY-YC7eHFjb-TpKf2ioPJNhZ8RccYsrR-oU=wmt26z9AUNebg@mail.gmail.com>
 <a7da72d0-ed3f-ab5c-a72b-1b0518436a2e@grimberg.me>
 <e4f3f68d-a4a7-e799-c3b8-1d600e3888b5@mellanox.com>
 <CABY-YC4jSOZJW2zEx5dS9BRj8+ipNF5aF_0cgkuDo9oaLbhvew@mail.gmail.com>
 <9024d7bc-d55d-06c1-65b3-61027f81fda6@mellanox.com>
 <CABY-YC7yGBk5xLpxYHUW_sRO6LspRWG6sMc4To1uggkXPjBvWQ@mail.gmail.com>
 <a82f314f-f294-3cc9-5b94-f550c0538297@grimberg.me>
In-Reply-To: <a82f314f-f294-3cc9-5b94-f550c0538297@grimberg.me>
From: Anton Brekhov <anton.brekhov@rsc-tech.ru>
Date: Mon, 30 Mar 2020 11:26:51 +0300
Message-ID: <CABY-YC4sWPNjZcwdZQtq_QR8iSbWZtyaAZTj8vCLL2pkdPfiZA@mail.gmail.com>
Subject: Re: NVMe Over Fabrics Disconnect Kernel error
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_012704_575593_92BB9C44 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 Konstantin Ponomarev <k.ponomarev@rsc-tech.ru>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T2ssIHRoYW5rIHlvdSEKCkJ5IHRoZSB3YXkgSSBmb3VuZCB0aGlzIHRocmVhZCBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAxOS83LzE4LzgzMgpJdCBzZWVtcyB0byBtZSBsaWtlIG91ciBwcm9ibGVt
LiBNYXliZSBJJ20gd3JvbmcuCgrQv9C9LCAzMCDQvNCw0YAuIDIwMjAg0LMuINCyIDA3OjM5LCBT
YWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPjoKPgo+Cj4gPiBUaGVuIEknbSBhZnJhaWQg
dGhhdCB3ZSBjYW4ndCByZXByb2R1Y2UgdGhpcywgY2F1c2Ugd2UgdXNlIEludGVsIG9tbmkKPiA+
IHBhdGggZHJpdmVycyB0aGF0IGlzIG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIGxhdGVzdCB2ZXJz
aW9uIG9mIHRoZQo+ID4ga2VybmVsLgo+ID4gVG9kYXkgd2UndmUgdHJpZWQgdG8gaW5zdGFsbCBu
ZXcgdmVyc2lvbiBvZiBrZXJuZWwsIHVwZ3JhZGUgdG8gQ2VudG9zCj4gPiA4IGFuZCA4LjEuIEhv
d2V2ZXIgbm90aGluZyBpcyBjb21wYXRpYmxlIHdpdGggb3VyIHRlY2hub2xvZ2llcyBpbiBvdXIK
PiA+IEhQQyBjbHVzdGVyLgo+ID4gSWYgdGhlcmUgaXMgYW55IG90aGVyIHdvcmthcm91bmRzIG9y
IGlkZWFzIHdlIHdvdWxkIGJlIGhhcHB5IHRvIGhlYXIKPiA+IGl0IGZyb20geW91Lgo+ID4gSWYg
bm8sIHdlJ2xsIHN0YXkgaW4gdG91Y2ggd2hlbiB3aWxsIGJlIHVwZ3JhZGluZyB3aG9sZSBjbHVz
dGVyLgo+Cj4gR2l2ZW4gdGhhdCB0aGlzIGlzIDEgUkggaXNzdWUsIHRoZW4gcHJvYmFibHkgeW91
IHNob3VsZCBvcGVuIGEgdGlja2V0IHRvCj4gUkggYXNraW5nIHRvIGJhY2twb3J0IGEgZml4IG9y
IHJlcG9ydCBhIGJ1ZyBpZiBpdCBzdGlsbCBleGlzdHMgdXBzdHJlYW0uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlz
dApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
