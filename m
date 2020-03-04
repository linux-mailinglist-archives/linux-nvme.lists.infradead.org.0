Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF6E178F78
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 12:19:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGtI99oZS4Eapu5yOZjePcCPn2TGP/LpftbNVKryfYQ=; b=Fbu/IWai+x17mv
	iLWcIziC17tULE5vvnTF2RE1OzIM1uyfWZ0ROZpVkLsQJuAJ44jvdPlScP+8GY86rttiE5gGpYWiS
	rK8gaeBN1kV+m6kQuR57olbf5N3HxaZqQ8zKLNVeC5eV9kDzCrcGtwZRFlmP3LhRE5dOVPDNYFBK0
	2HjPgOLqtwavx0jOSdaSp+uT/PTg/sPkuhy645ukRhF565EET/wmWzkIJU8iwrilKSeyu9lzEAfIY
	cAj05FW6eIFityKTC2t49J+A2zQtu8+dgXD/YkbyJ+HSa6G4Kvw2Hr3OVjELBLLmnygV+LA+MlllG
	H79HOnW2QlkPVAlYLmlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9S41-0005hr-MA; Wed, 04 Mar 2020 11:19:45 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9S3x-0005hG-Bq
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 11:19:42 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id ee37838e
 for <linux-nvme@lists.infradead.org>;
 Wed, 4 Mar 2020 11:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=543ZUe3zNqoDf0fPqwGkRrAU66k=; b=WXd4PK
 oA7nYlSqRdOT59VAzxKhL091jDCzLlyk/7vs8Jh+FHDjR8J/4aBB43i+QMaBANpC
 g4th2ZA2FeYdAHEaq8+jyrhtia2NGQsAynOG5I/6gGZB9VjvhLK+KOtJOcleMeoY
 hFCqh51Kmc13j8d62fG5yOxW1jjjH6AVhD9uLNOU1tM5Vd92Q+HEF4G6FD97M/g2
 eIoWGYzZhNioguHur+H/HtopA/UyUGn9/wLgA9ZfKCt4HQuu/unjsrSosJOZO6nY
 Z2+Fl3ht5pos3eJ5cvjenB6n+5NDg5wHiCvB8vK38lJxpiULUo+0hQQoUHegSoA0
 8vHM5Ms3gvvK0trQ==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 80d15343
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-nvme@lists.infradead.org>;
 Wed, 4 Mar 2020 11:15:01 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id w69so1479174ilk.6
 for <linux-nvme@lists.infradead.org>; Wed, 04 Mar 2020 03:19:34 -0800 (PST)
X-Gm-Message-State: ANhLgQ0JP5DWZMXC/2B/LkGtWDn2mu0WR/SRXdknJaYCqmEuqZ3VhHJ9
 6fvlTSvtxr6pOn3IOhaKuPSDGba0zFncEWgH4KA=
X-Google-Smtp-Source: ADFU+vsro5efBHb+brZoqyBYVH5tBP/vkJGryDQMGq+W1HS9ChXW3WfQZLwt9LDI13wRUFEy/IgGiG1kp1x9BCjLkxQ=
X-Received: by 2002:a92:9913:: with SMTP id p19mr2338603ili.38.1583320773458; 
 Wed, 04 Mar 2020 03:19:33 -0800 (PST)
MIME-Version: 1.0
References: <20200302020339.GA5532@zx2c4.com>
 <20200303220246.GA20545@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20200303220246.GA20545@redsun51.ssa.fujisawa.hgst.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 4 Mar 2020 19:19:22 +0800
X-Gmail-Original-Message-ID: <CAHmME9pfUFSRVX7Tamg0E5pTxk4Xx322nMoG6j1tTkoxtgaY+A@mail.gmail.com>
Message-ID: <CAHmME9pfUFSRVX7Tamg0E5pTxk4Xx322nMoG6j1tTkoxtgaY+A@mail.gmail.com>
Subject: Re: "I/O 8 QID 0 timeout, reset controller" on 5.6-rc2
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_031941_548949_6D8810EA 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ext4@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 6:02 AM Keith Busch <kbusch@kernel.org> wrote:
>
> On Mon, Mar 02, 2020 at 10:03:39AM +0800, Jason A. Donenfeld wrote:
> > Hi,
> >
> > My torrent client was doing some I/O when the below happened. I'm
> > wondering if this is a known thing that's been fixed during the rc
> > cycle, a regression, or if my (pretty new) NVMe drive is failing.
> >
> > Thanks,
> > Jason
> >
> > Feb 24 20:36:58 thinkpad kernel: nvme nvme1: I/O 852 QID 15 timeout, aborting
> > Feb 24 20:37:29 thinkpad kernel: nvme nvme1: I/O 852 QID 15 timeout, reset controller
> > Feb 24 20:37:59 thinkpad kernel: nvme nvme1: I/O 8 QID 0 timeout, reset controller
> > Feb 24 20:39:00 thinkpad kernel: nvme nvme1: Device not ready; aborting reset
> > Feb 24 20:39:00 thinkpad kernel: nvme nvme1: Abort status: 0x371
>
> Sorry to say, this indicates the controller has become unresponsive.
> You usually see "timeout" messages in batches, though, so I wonder if
> only the one IO command timed out or if the controller just doesn't
> support an abort command limit.
>
> You can try throttling the queue depth and see if the problem goes away.
> The lowest possible depth can be set with kernel param
> "nvme.io_queue_depth=2".

I was unfortunately never able to reproduce. This happened while
downloading a torrent, and torrent clients have a history of creating
"interesting" I/O patterns. Hardware is "Samsung SSD 970 EVO Plus
2TB".

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
