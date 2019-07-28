Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8DC77D70
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 05:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9VZDp/Nuci+5vfFGOrxkEphSJJEztC/9sa5wkQ1gxE=; b=sm835x/PUlTj/Q
	JicxgZ0p8EdYt+Ut+3fm/DfsoSunsadaie6KC04NhTOESoiY2fW+3z2GSuEnzjpN+7Z4lFGShxHXh
	KvCG8dCJ62Zo2OQnUCzBwbApGZTFU7n1V2prlJbqVnv3wJQUhBOj5JS5GrADuMKImGBiwchy7FjZ6
	IhJXZyr8P2NIyIi0waPQhlYSfmitCQGK/IGhnvJFsTY1GOe4qLrZoBSkKyCoJwuI5uKIIIz4a12bN
	UKBV601jDn/GJhscso/ui6bujEo2lLOCx6tZYRjhl2LFovDWc8gV4hTdnBEEFBZmZybxtJypOBoQF
	UOLB381gH1W9OGHu+vhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZhj-0005LY-Rr; Sun, 28 Jul 2019 03:18:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZhZ-0005LF-WA
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 03:18:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so26280184pfe.11
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 20:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b+xgdl7MamAdBLLFOJIIpjF1hZfbcx99i3hSqKYB8+I=;
 b=J848p0LOU7xlQ10Vrgc4jbt8MMybZsToGCI4fyiAD6upvuLOWIxjDwdJ+KQldwpwqA
 5wOC82fiJ0U4OF6YWKLlwDe3npKlylXRXuRTiIzgpyKIEf9EZk5fXGGhF5zZaEjkBScK
 biF9BIU7WkM5zVuQvpSiNZvq02uhJ77K2Rmz2DhyQyZW6CEPVYvzWc5ttNIWcrt1MMbP
 c+qV0nZIDplxTLu+mw5hCUUWHTNGoS/i9dQvAa6/Sf9MKT66lXbpq1cUVjnoz+v8DgvZ
 VpeF+q9BTYvT/zHKyxDYxLFzUqXua9JInUEOndhoEkM0+lXxGmuOC4djSzk25yEP+B2W
 0ctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b+xgdl7MamAdBLLFOJIIpjF1hZfbcx99i3hSqKYB8+I=;
 b=WeR8xSD5u0ECHFN7OLwaFpM8MCQJFcgFyjpF/27TI8MinogGVaIbIWKanQtlq2F0Rl
 AKt3xaIXevTleV8gxfFJhkY1E0Cusl3TDkxvmm7bCq6s6Tf5rohl45LWrRaVWH28ByWT
 XH2nsaNCnQIfwMBkKb5nHJivBsqrn1LatKl3FS2gzRQ8k6f+fn9Z/KODeN1GqBcYt41J
 BarQv/1cmiOSgdYf/XlryRuAolw6zNA1Ylk9uALl8RiNhoqpNEB2Tc8Rdug5JAnZ+V+g
 X0qWayL+FsaNE6cdqe2wuX1mqRkwom2w8sGmUOkntGlY3Fhv0eNHUG5ZL+H/jKcXd46S
 GAig==
X-Gm-Message-State: APjAAAXKK16VFcppbXGPP3dQMR0MJDclJo/mZcZ4z7ztwKtSTu4/zZlR
 8qA5SCrXjp7TEL33o9oTZThpBD0Wxgw=
X-Google-Smtp-Source: APXvYqyx09VtdbMzcd/oniu9Mfh8PXV7EuchajgiJG8g1ge+UYr1/BKNRTzh2GN5AB0UTSIowJlkdQ==
X-Received: by 2002:a63:6bc5:: with SMTP id
 g188mr67943253pgc.225.1564283905163; 
 Sat, 27 Jul 2019 20:18:25 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y14sm6650388pge.7.2019.07.27.20.18.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 20:18:24 -0700 (PDT)
Date: Sun, 28 Jul 2019 12:18:22 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH V2 2/3] lnvm: introduce chunk-log command for chunk info
Message-ID: <20190728031822.GC24390@minwoo-desktop>
References: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
 <20190727193249.22655-3-minwoo.im.dev@gmail.com>
 <8276ea2a-990d-3aae-b144-54986153e834@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8276ea2a-990d-3aae-b144-54986153e834@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201826_058927_44FBFAB1 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Matias,

> > +static inline const char *print_chunk_type(__u8 ct)
> > +{
> > +	switch (ct) {
> > +	case 1 << 0:	return "SEQWRITE_REQ";
> > +	case 1 << 1:	return "RANDWRITE_ALLOWED";
> > +	case 1 << 4:	return "DEVIATED";
> > +	default:	return "UNKNOWN";
> > +	}
> > +}
> 
> The Chunk Type is divided into two value ranges - one for the chunk type
> (seq, req) and one that describes the properties of the zone. I would move
> the "Deviated" into being expressed as an attribute (or similar). Then they
> are clearly separated. An OCSSD implementation can both have the SEQ write
> bit set, together with bit 4 for dynamic chunk capacity. The above doesn't
> communicate that in the right way.

Ah sorry, I think my brain was not working well in the dawn ;).  I'll
provide "Deviated" things as an attribute first regardless the chunk
types.

Thanks for the review.  Will prepare the next version.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
