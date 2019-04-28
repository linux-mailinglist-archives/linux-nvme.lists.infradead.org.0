Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E91AB672
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 22:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h1hnpYgFO+77bzYEkksckZucqxa0u9MBAzRZvBJiJU=; b=WCpVOvGvOJzlt8
	kFGOxYVRWRakzOmfq6TIWikOtYXwtBYHGWxmwMM1Ikxi+oDdm5dRKyKoh1ptswNJsTJJlZNaW/F3e
	HJmlpWR/aXj1jmhaizwzmbsbbuscnlIb4mOWCGIgAlLs8D8eI4sexroECsPmhQjNAx8xsijQwmZIJ
	KyaOPyLKA7HdMdx1bSKVXMV6Jhj6xtYHvIrYOWYexiRW3IuFQ0Up2bm8Pm5LMgJDocN+jwODyxJjH
	b0Y0CgFRsuC3JyJ3i5fw++jb4kLmm/aVQAxtJYlZxt5b+wva6kh7y6a5VW/LsH9UkN7h3zAsWaANI
	dfZFlg+2OgrZs9KL1lHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKq66-0003WM-2P; Sun, 28 Apr 2019 20:08:26 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKq5z-0003VQ-6N
 for linux-nvme@lists.infradead.org; Sun, 28 Apr 2019 20:08:20 +0000
Received: by mail-qk1-x72d.google.com with SMTP id g141so503843qke.5
 for <linux-nvme@lists.infradead.org>; Sun, 28 Apr 2019 13:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+TG+gf49pEHpK22EE9Rak4ugReFKQZlKT164LJBhbAA=;
 b=HXdALYq6b9r7GsIAIxnkX7onjXgh+ntIQ2eZUekOKApjWokpRazNDapRCnlqZjZlba
 yJD7p1MBS4SsCA6NWLP7mg0IyuJgqNVspkCbLpevZnCcAihNrvKlXUurLtZ/B84BfV0j
 ygFriMsFr00eZs5WfweBEuf0Fh0uoulN5eEWjIbpQkc3whqwxBs+6F0OPLqFQdhld/6T
 0eJX5WpgFHfiaq4Yw0Ty7Ju/KNhvkgQkxZvjhnQaA111Whs7HoRHVTd3bS81W28v/Qu4
 PUYDWz915NRuT5GNVM/7MBCQR7fO73gtCoRiNpiXVCBWCxvC2ZJ+xXv+Kk+8V/UL5NJg
 gJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+TG+gf49pEHpK22EE9Rak4ugReFKQZlKT164LJBhbAA=;
 b=sy90LdaMblQUqH++YUdtlAYlvYzMVhBeagqXDpIxEqaLRt3tV5xOGDBTrAsx3ubKKl
 u+5LaBNUiA9wOcaaiqD0mPq7a2vCQzWOlo0isROgb+nDtl92v1oY4cL5XCkKG8Nk5tCH
 02kQg8YfJNHgY8K+C7i1jOJ/NrgM2FrXu+bbQY6tykSQeqFiPwrgNp3hBCpUOk5+Yh1+
 G4Hj1OegjA99WO4r2wk/2CQGOHz4L2gNzjyWqp+E+HKztEUb69fSJYD+0sZfANQCbHrO
 zw9q/HKQivuGTajbmqpEpv8ql/Se7TjB+34h6pkbvsFOONe6V7JD/p6bP3RGMJkwOJ3k
 MO8g==
X-Gm-Message-State: APjAAAVu1JoeA2n0BgKihwUoKRyVuG4QS3brZ9crZScXCKZS9Xagt95g
 8bgysm2A9JyZCzfsLkVf3iWxrXjl5Kg4sbR7Mb8=
X-Google-Smtp-Source: APXvYqyY7Guy4fBnDVm0U135CZZ8DQ/qbPJpUyjw6gfqVUE2LstKp6DuoxXJnPCzdYOSsMtv9O5W+ybjrRUw5Odz5I8=
X-Received: by 2002:a37:64cf:: with SMTP id y198mr32380276qkb.5.1556482097417; 
 Sun, 28 Apr 2019 13:08:17 -0700 (PDT)
MIME-Version: 1.0
References: <379F21DD-006F-4E33-9BD5-F81F9BA75C10@oracle.com>
 <20190220134454.GF12668@bombadil.infradead.org>
 <07B3B085-C844-4A13-96B1-3DB0F1AF26F5@oracle.com>
 <20190220144345.GG12668@bombadil.infradead.org>
 <20190220163921.GA4451@localhost.localdomain>
 <20190220171905.GJ12668@bombadil.infradead.org>
 <B53C9F2D-966C-4DFD-8151-0A7255ACA9AD@oracle.com>
In-Reply-To: <B53C9F2D-966C-4DFD-8151-0A7255ACA9AD@oracle.com>
From: Song Liu <liu.song.a23@gmail.com>
Date: Sun, 28 Apr 2019 13:08:05 -0700
Message-ID: <CAPhsuW6uDeXrRU9pd-kPOzjJn3DVdx0O5Lny_hpyQ=Fpbhg4gw@mail.gmail.com>
Subject: Re: Read-only Mapping of Program Text using Large THP Pages
To: William Kucharski <william.kucharski@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_130819_256857_329329F4 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liu.song.a23[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (liu.song.a23[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Linux-MM <linux-mm@kvack.org>,
 Matthew Wilcox <willy@infradead.org>,
 Linux-Fsdevel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi William,

On Mon, Apr 8, 2019 at 4:37 AM William Kucharski
<william.kucharski@oracle.com> wrote:
>
>
>
> > On Feb 20, 2019, at 10:19 AM, Matthew Wilcox <willy@infradead.org> wrote:
> >
> > Yes, on reflection, NVMe is probably an example where we'd want to send
> > three commands (one for the critical page, one for the part before and one
> > for the part after); it has low per-command overhead so it should be fine.
> >
> > Thinking about William's example of a 1GB page, with a x4 link running
> > at 8Gbps, a 1GB transfer would take approximately a quarter of a second.
> > If we do end up wanting to support 1GB pages, I think we'll want that
> > low-priority queue support ... and to qualify drives which actually have
> > the ability to handle multiple commands in parallel.
>
> I just got my denial for LSF/MM, so I was hopeful someone who will
> be attending can talk to the filesystem folks in an effort to determine what
> the best approach may be going forward for filling a PMD sized page to satisfy
> a page fault.
>
> The two obvious solutions are to either read the full content of the PMD
> sized page before the fault can be satisfied, or as Matthew suggested
> perhaps satisfy the fault temporarily with a single PAGESIZE page and use a
> readahead to populate the other 511 pages. The next page fault would then
> be satisfied by replacing the PAGESIZE page already mapped with a mapping for
> the full PMD page.
>
> The latter approach seems like it could be a performance win at the sake of some
> complexity. However, with the advent of faster storage arrays and more SSD, let
> alone NVMe, just reading the full contents of a PMD sized page may ultimately be
> the cleanest way to go as slow physical media becomes less of a concern in the
> future.
>
> Thanks in advance to anyone who wants to take this issue up.

We will bring this proposal up in THP discussions. Would you like to share more
thoughts on pros and cons of the two solutions? Or in other words, do you have
strong reasons to dislike either of them?

Thanks,
Song

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
