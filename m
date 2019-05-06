Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB7154C0
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6Ibn0ORC1d49+jKYsmhTYU+OFE4fSqMWb5ru1GanyM=; b=ngFWJRNTx9uBVW
	KQLx+XsbIOduRwa2VxPB1WBqyeLRxEo2OD3Y8/ws0nrFVkEBi8NuvbKUnCmaPRRmlujz+finCyYqk
	etAHaAoNPUaiJMrBCLSpBTUFfksT+HkxcNNe2k81wdahrQBBkiNmEOZasrNxNFM6uP+1wP1m3PXIc
	dm13yaMl9wd8yvgKnO9/2OTayQvb4cCmA2ISs4GF4Pa6/oAka1+6YTTCXcnawMellEZccdzXbQFVv
	sv1rfrpN0V/TvOWXk+6uYAq828uIPKfwhj685GXOtoefbMWoJUErE5jE4P8twhyK1IJT2GuW0qAAT
	Pn05qWFPxE58SVEOxCrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjjk-0001eh-3V; Mon, 06 May 2019 19:57:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjjf-0001bP-1l
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:57:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id y13so7317479pfm.11
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 12:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0u0NXUsZMmTWXGlFJvxRCAcTEda73uFSiRxKbU1MEDY=;
 b=He7AzCEfQGbioN1fcIgKBhh1erYYkDFC0M5uVEPI907AIar4b9I4f97t+DQKiFgHzT
 XoiZ17vgaYzw7kvFbluOlnX56rjB/WCG5ZSzHKfmPGwRigtpQgzCJdAp1ncC1LanGOgA
 vqpHE3Bs5xpTC+XqfDHnVc/gO0OUICd9Nj88bauDG2aYhG0s1+wotdBj03KPDsOra1ip
 mzWj5g3Ok5q2AOqKMfkwSpxzlLGqv2N4jLipMvKpPdg5dhv88x0aXRiAm/TfzTs7ksdS
 DFqxbTwvELfnaXbkroBVuxrHdPCXWq7/6H654QOhHKEzxTmiGGVOw9Or+aEW+hmgv/m/
 V7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0u0NXUsZMmTWXGlFJvxRCAcTEda73uFSiRxKbU1MEDY=;
 b=ihKN/aKny2RIltMAMekY1Ll0+ekcqOyltNenCK+JYwkwK6Yda0TRs2cM213vYLOjIp
 SKVsoJDDmytYN5IjMoR6fxzvkG8qyOkRCytadfWkCkosweLU+FJUsDMJCrhSsVDamjx/
 o9RSh5jtad3wOMQhSdBUg5rgGpyTrVIySSq3Lt2fuNZFP3H8SIUniYSxFh/gDdYawOhp
 71Ee9PNPc98ReFScTOOiNGtODtCaXvBpsuh1PSi0uOO9LYiVwgUFLGEoGBp2n7bmTWQ1
 qtm/tAUc9tiobqSegA8Z0vxKYZU+sviJcOt7knW/HyHe4I2Qyfo6zsWEK50sm3ZhtQcu
 Sm5w==
X-Gm-Message-State: APjAAAU2pkUA4oQwPqVCHZsbPjHwV3SBglMhcdEbQ8F6Ll3np7QJ15Oz
 kKD0Xqma69D4nwnzc3VVDar4S2rj3fU=
X-Google-Smtp-Source: APXvYqxTqEMjnv7Ry+wvJjjEoeKu6eN/RctSZe826xOxRyWcCu+u8nHYwWJZbxSQPyqeiFY+GIxOTA==
X-Received: by 2002:aa7:86c3:: with SMTP id h3mr34938028pfo.169.1557172633896; 
 Mon, 06 May 2019 12:57:13 -0700 (PDT)
Received: from vader ([2620:10d:c090:200::2:cf4])
 by smtp.gmail.com with ESMTPSA id 13sm13998922pfi.172.2019.05.06.12.57.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 06 May 2019 12:57:13 -0700 (PDT)
Date: Mon, 6 May 2019 12:57:12 -0700
From: Omar Sandoval <osandov@osandov.com>
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>
Subject: Re: [PATCH] blktests: Use old variable check for Bash <4.2
Message-ID: <20190506195712.GC20450@vader>
References: <1556908108-16475-1-git-send-email-jonathan.derrick@intel.com>
 <20190506194239.GB20450@vader>
 <f2126a9f56ad65c58300b8b2216da7fcec081018.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2126a9f56ad65c58300b8b2216da7fcec081018.camel@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_125715_095588_5D1BAF90 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 07:50:04PM +0000, Derrick, Jonathan wrote:
> On Mon, 2019-05-06 at 12:42 -0700, Omar Sandoval wrote:
> > On Fri, May 03, 2019 at 12:28:28PM -0600, Jon Derrick wrote:
> > > Bash 4.2 and above supports -v variable checks, which returns true
> > > for
> > > set or null. Instead use an older bashism that is compatible with
> > > bash
> > > 4.1 and earlier but only returns true if the variable is set non-
> > > null.
> > > This inherently adds a sanity check in case of null variables.
> > 
> > Bart previous sent a patch for supporting bash 4.1, and according to
> > him, there were some further changes required:
> > 
> > https://github.com/osandov/blktests/pull/42
> > 
> > Either Bart's list of missing features was too big, or this patch
> > isn't
> > enough to support 4.1. If it's the latter, then this is a no-go,
> > because
> > Bart's change was too intrusive to be worth the hassle. If it's the
> > former, then this change isn't quite as bad, but I'm still not
> > excited
> > about supporting a 10 year old version of Bash.
> 
> 
> Mine is more than likely some franken-bash. I tested my changes alone
> on a 4.1.2 from RHEL 6.7. RHEL 6.10 is recently released so this
> version of Bash is certainly still in use.

Ah, I didn't realize RHEL was using that version. In that case, I'm
alright with this patch, since it's not quite as nasty as Bart's change.
Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
