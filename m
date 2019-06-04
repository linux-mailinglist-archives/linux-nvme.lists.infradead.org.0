Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F0534C02
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XgOghIz8zEd4uZilE8odn3Ej9tF6yOre4InMVBhrqY=; b=Lp4lYwYIJ/mBHE
	ztqrMJ9rN4tYq5+hOlig/De7QPj4AqiO4Go3mrnkIRIP7aQ/SiOQ9nljd+imEnI1Nq9wjUG9+kmlu
	8nDDiLV+qI7LdFvl+27PSHY41Il1xFHKLoSzxfuuOzSMybfWog9onegWJbDDa7OSQB6/ElM2He6Jb
	M53kNcRC3IuXVNkyl1ThN4/J1Fe0ZTYBz0byla3X69mUzkAhVYSR/k7ksolTg9e1P0xe2zr5WEW34
	WrfKWKhiibXLYBBHrfu6uSEJSmGMjdQSk9Syss+BwmuBmlPOE0x2nTVb8DL/9EutzAJq/DnKOj7es
	Buh4mSJUyJIIWACjtmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBF5-00043I-8W; Tue, 04 Jun 2019 15:20:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBF1-00042x-6C
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:20:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so12875538pfm.12
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hFFlV/WMv3KuwzxPHOucnrO+f9HoMEpYHXFfbO2Z7K0=;
 b=rMkHFtLgHy9skgKser6HmJY4IZt530KOU62D0CkZF8uo5WbOndruQgFcuAx3cPBaKb
 XseTzYBnz7KZ5NYjh2++joL6Yx2jpC8JAYRRUyRgqAByPk2Y/S3mG/8PdZzY7kJqcEKt
 3c9hf2n1RrA5x2aSfWS/GVJ8XdP6BjjSSTTjeQRoAifKkCqXVd+df5CVNuOYowaOMeLH
 luzc/n1W20+lg4s9iwifm3LYHX+gVB1u06cxK69BpLHVqRw2x3qQGV/mrEb5mCMpGWNC
 8q4Dhh/7bXr9fv8vGevykfMIrbVbetvRn4CcUwfWJ1i4Nfz2GxGjh0f0qQqbs2JaRQxs
 /kCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hFFlV/WMv3KuwzxPHOucnrO+f9HoMEpYHXFfbO2Z7K0=;
 b=YHpIdKdFcVZpSTpduRsrWjLgjRg5XmhTjU6cF0KqYV+Env4rAxneCTqzS3t9xIZyFE
 ey4hD05TJA4Gb5NU4if6etgzAm/s1FmK3Qbx+Pp7m8aR1ihlynX3pWi2mIUBzFB7DJQm
 4j0hc0VeBvBQOBEdo1yBGO3mc6h1IouJn40+pbyTNpyXWyJlu3YZznemzwGQKWgg4eb3
 mcWlOgDdBWhx2Q7LxN6cUf7Hqa1uPuO9mKQHumuDW8W+4MMNuBf27enHcVeXQuqpS8WS
 GJs+PcrfJGEtD65NNXgdhVgdkJRo+/o0Tu3TsJ3ylGNQh3J9QFDXqhjgHTwW3gy4mvV0
 gmQw==
X-Gm-Message-State: APjAAAUaAxVpCcZkUSV5dLSZBf6tztkOEshhSi5HRwbTH7n5pju/eCF2
 4UMs2O+Pi6sDsvJQkJWv840=
X-Google-Smtp-Source: APXvYqyPykfiAeseGuoCHD/FN1FPJoXmoFMAfYkBQ98zUttOSUoZGDVmj5SUsXJIiqG5ZXvILoB4Kg==
X-Received: by 2002:a63:d856:: with SMTP id k22mr28719799pgj.384.1559661646296; 
 Tue, 04 Jun 2019 08:20:46 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v23sm19979845pff.185.2019.06.04.08.20.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 08:20:45 -0700 (PDT)
Date: Wed, 5 Jun 2019 00:20:43 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
Message-ID: <20190604152043.GA20696@minwooim-desktop>
References: <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-2-minwoo.im.dev@gmail.com>
 <CGME20190524013628epcas4p2a5b6451a173e112a13157f193fb29321@epcms2p2>
 <20190524014037epcms2p26b77433a8c919b847ccb9f8acbb2485a@epcms2p2>
 <BYAPR04MB574964DAEA1B94732AE1E349861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB574964DAEA1B94732AE1E349861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_082047_255002_8047E92E 
X-CRM114-Status: GOOD (  17.16  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-02 23:03:52, Chaitanya Kulkarni wrote:
> On 5/23/19 6:41 PM, Minwoo Im wrote:
> > Some functions have label with an whitespace, but some don't.   I didn't
> > wanted to involve those kind of clean-up things in this series.  I just made labels
> > with its own function's previuos style, if there's not label, I put an whitespace
> > prior to label.
> >
> > I was thinking that it could be cleaned-up at once later.  Do you really think that
> > those kind of clean-up things are involved in this commit?
> 
> We should at least try and use the default style irrespective of the
> inheriting existing style
> 
> which will trigger more cleanups. Begin said that now the question is
> what is default style ?
> 
> I'd just stick to non space labels as that is something been consistent
> with kernel code.

Hmm... Actually I just tried to do all the added "ret" labels with
non-whitespace in front of it.  But it seems that it's not looking good
though because it just follows the existing style in each functions.
The new label which has been added without any exsiting labels in that
function are good to be updated into default(?) style.

In commit point of view, if a single label breaks the existing labels
style in that function might make the function dirty at the time of
commit.

I would prefer to follow the existing function's style, and for the case
of new label in a function, it will follow the default sytle which is
non-space label.

Inconsistency among the functions are not good, of course.  It should be
cleaned-up later, I guess.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
