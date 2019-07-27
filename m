Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3492C77AF1
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 19:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3XLMoupD34PHM0BesrAXyqW+BkkEw+5POTkMf+wXBc=; b=etfGvNF0yarUc+
	ApN4d+BMQV9HVL0Z59ONLDlXgPQsMRUmUdXrxkjFSb9cE/m3ZVUAZ94f8fDYk6m6I9MQgDEBLBZOZ
	jXISSMDzyZYAwWlMwdn+PaLI97lj10povim+hnkFwy3znLq1nHWKO9e5YxTw0VG+G6uyiqA254BUd
	4v3geouLFCvXFWJvFzLRAUXNEpqhF4kKEG63ZRhAKcfk/a/L6MuscYD86FBZA3RkRDPlYFg55g6Nn
	AQ4soved6ePD/E4hNDx6+CR3B9+/K0I9buY1FakrT3dtPCR2L4WBeZWB/cIdvl5RAADVuc9NGpTtW
	iYby+lW9pxOZV+wT1TTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrQui-0006pc-6A; Sat, 27 Jul 2019 17:55:24 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrQuZ-0006pL-SW
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 17:55:17 +0000
Received: by mail-pg1-x52c.google.com with SMTP id s1so19929328pgr.2
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 10:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=h6ESLtYxyfMHjr2WJw8DNnybLT18een/A2oGMm5jwig=;
 b=u+utevigH7FfcPliRUbcr7om7jGpZzqPGdghOrI6UfR3dfly8bLoLSSwY+6Fg6+ZWM
 k9YAAQDQ9I9zdHEZ6SAQDaFv332Nkx5necrI32jfTMR7g3LIW8zmiWy1p9aslitkKA4I
 H73zioTT2CG7jUBBeyC5zJVplRzkBOMZMPiF20mgnfNMZ/nhhl3+Bdea/KcHnCRisaiG
 Wyziwdy+P2Vml4nmpB4l1U5uTWOvgxq5MQ+b8gVJzibwjuzxgZdB0mz39QEomOHkQEN+
 Arv0mq+a1rbMWOZBRmL1XgDE/WVxkdtSWL8tiMTw4AsJUTJW7BgCXWAHseGZesKuUXOy
 4ZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=h6ESLtYxyfMHjr2WJw8DNnybLT18een/A2oGMm5jwig=;
 b=JOVrL7/ut/75kuQUJ5hrpx3Twr2ph0Ro80kLIeVd7u+nlY8qXJm+tUKKMkhvOBXKdy
 U0Nq0Mou4y/x3kPdHFRZXd3mG8lT/BkzKMeQ6+GHFvPyUNSDv7YEWB8T9Fnm7URBeHJ2
 AD81eSB67iRYAAO5DuVTjwI7hJb/EIWxcX/azAIpkMP5bXPyV59iwtnUimTLVujMBTnj
 QMNQaGwBFGYrmhwAdcAXiyDju719zmCMbvks/WhW6zlUWa2PkJU0DonNUU1XCm0vHJv+
 rvC+Tg91fqJE1HbSEzUd47gmHimdC74NjZY14Z9PjyjixersWqC7Kyys1F5wOnemNh2j
 qkkg==
X-Gm-Message-State: APjAAAVDpTrGIgR50UixfqyHSf40hWNu1zaWDAlmyysdQmBuY37FVzgQ
 CYNFEQSIbFONARYkZQJLrEc=
X-Google-Smtp-Source: APXvYqwVZJzCZ9qJMzgJbKEmejUzW8fN8aJl33ZSPApPWN+rxqgBzFHJssTCUP/wyoT15/8LkgHbeA==
X-Received: by 2002:a17:90a:b387:: with SMTP id
 e7mr14374093pjr.113.1564250111501; 
 Sat, 27 Jul 2019 10:55:11 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b126sm84514184pfa.126.2019.07.27.10.55.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 10:55:10 -0700 (PDT)
Date: Sun, 28 Jul 2019 02:55:08 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Message-ID: <20190727175508.GA23704@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
 <20190725152926.GF3018@minwoo-desktop>
 <CAOA7RkOe_pOvuSJZVhYkm8c=pC6bOu1g4Y0cN7wARrcMqoCEVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOA7RkOe_pOvuSJZVhYkm8c=pC6bOu1g4Y0cN7wARrcMqoCEVA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_105515_948936_FE823D3E 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDctMjcgMTc6MjU6MjQsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6Cj4gSGkgTWlud29v
LAo+IAo+IFNvbWV0aGluZyBsaWtlIHRoaXMgd291bGQgZG86Cj4gCj4gVG90YWwgY2h1bmtzIGlu
IG5hbWVzcGFjZTogJWQKPiAuLi4KPiBTTEJBOiAweGVlNDAwMDAgIFdQOiAweDEyMzQ1Njc4ICBD
TkxCOiAweDEyMzQ1IFdMSTogWFhYICAgU3RhdGU6IEZSRUUKPiAgICAgICBUeXBlOiBTRVFXUklU
RV9SRVEgICBBdHRyczogMHgwMAo+IC4uLgoKSGkgTWF0aWFzLAoKT2theSB3aXRoIHRoYXQuICBC
dXQgSSdtIG5vdCBzdXJlIHdoYXQgdGhlICJBdHRyczoiIG1lYW5zIGhlcmUuICBJJ2xsCnByZXBh
cmUgdGhlIG5leHQgdmVyc2lvbiBzZXJpZXMgd2l0aCB0aGF0IGZvcm1hdCBvZiBwcmludCB3aXRo
b3V0IEF0dHJzCmZpcnN0LgoKVGhhbmtzLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
