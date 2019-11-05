Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDBAF075E
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 21:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wD+TFCA3kBB7J3BdNv1xnQEm+bH1kEHQJLrR/ABrow=; b=ul+hIbpYIJNGW9
	29+lUrb/Wh1FI0L92bbdx7mHC6RQ9rA2rv7WxTnF+u6t7qe6rmZAUyazcLK3fOh4UMOnfXSSdk3xG
	r5y7+GofnZl5HUX8oE/LIRCMII0eGgMXLCP/mXM61Kj6ZMvoNXx7zkHhpWh42viiW009yShz1femb
	VnvpODUE/hwFJ63uVkKOuK5EWTHiVPAdXnnztn+O/d2LnscBW57xTAjRNX91u6elKGGgMxNL7PKjf
	RoyE5NqLPxA6zl0LROKcf4MNsnUZ0UkdKX65Aos8//P4vYH5oeVyfwInhYiTi8Qk/zZYaaPeU4yN3
	EEnHrXV2ltKxhSrcvfXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5ss-0004XL-Ey; Tue, 05 Nov 2019 20:57:02 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5sn-0004W7-IK
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 20:56:58 +0000
Received: by mail-yb1-xb43.google.com with SMTP id 4so9982062ybq.9
 for <linux-nvme@lists.infradead.org>; Tue, 05 Nov 2019 12:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dIEezFFKIHZBj0qSHNs0T72Y+LVQQWgQjVNEg04TG3g=;
 b=Dk4fFb10y0gk0dAhcyVw0w2enKgSTy5WoXuws+jdqE/TqyXhmJ4aA1py4uAw/olu93
 w1jf2vRM9U/79p3YxoCRzs1wWkRYdtRvpL5tnC+Xx/3A4gf0nCGxk+UdDXF7leuP9UoY
 WJy8aCdkXspXIfx2cdyLeTSAJZStdL0xH79CL4xALCk74fJ9+50YXcFjBOVOmbfZHAMS
 yeAQgn8Xg5bw09TF1WnlXAPRIZDJn8rtMq5PprRcTOu7AWuk4tlX7Skp5NyKaMPITP3z
 hKqX9nOc4tklyxlw/D6AafGdZkz2SFUKd37SIR+BQi5yT2f8h0eB+BkAUxrL60ns3mJv
 5vBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dIEezFFKIHZBj0qSHNs0T72Y+LVQQWgQjVNEg04TG3g=;
 b=g4OO4sGr7s6105HJ5yiohj1hSuWyCDOCGqDAbAcmEozopMR9F1VgxA/54CapnQyKb1
 rw3JZvPUpvp1rGwqwtsz74xIx9T33REENYk0ekQ19B/M1yLxERphsi8BtWuCUQFq8d/B
 Yxx7gwgX4ly1rxfHyqoxWwmRn01ORsUi20J3dE3//HiDj0hHaBOfLthBcQfqltXtP4va
 V5hIizYWlXtZi2bNKD6hqzeuw1ZoJf+yardudl04svb/kNEEJ1SCrq/+uYtnFyfMcvnA
 9Qqcl4waUDY/5qBGRwVOvVyTWtpBJ5g4j6a0fAJIYjDUzO83x3Fu47Iu6ZOzohjhjtEr
 +VLg==
X-Gm-Message-State: APjAAAUeL/WzcvOS304k/xFH1SZDgfo24w2QelSp/MbIOIxIDSohS90U
 ZMVJOaVHwEdXJeQo+6SBBOwji8Yz3P997v4fwng=
X-Google-Smtp-Source: APXvYqyUeSk393TMjATq6Bdw+D36pMO9HxUeY2HUcaE7CoDwSt0VFf+sEqpqWnrbryEmZvofCbLqZx4QD5okO5jjpm0=
X-Received: by 2002:a5b:710:: with SMTP id g16mr15581484ybq.181.1572987415698; 
 Tue, 05 Nov 2019 12:56:55 -0800 (PST)
MIME-Version: 1.0
References: <20191105061510.22233-1-csm10495@gmail.com>
 <20191105152654.GC22559@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20191105152654.GC22559@redsun51.ssa.fujisawa.hgst.com>
From: Charles Machalow <csm10495@gmail.com>
Date: Tue, 5 Nov 2019 12:56:44 -0800
Message-ID: <CANSCoS-tig6D2cH4KrG51ifS1cUSXqWiC-FccySgYznCVk3TcA@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125657_635480_4A3EF642 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (csm10495[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (csm10495[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 marta.rybczynska@kalray.eu, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sorry, still new to this process.

Signed-off-by: Charles Machalow <csm10495@gmail.com>

- Charlie Scott Machalow


On Tue, Nov 5, 2019 at 7:26 AM Keith Busch <kbusch@kernel.org> wrote:
>
> On Mon, Nov 04, 2019 at 10:15:10PM -0800, Charles Machalow wrote:
> > Changing nvme_passthru_cmd64 to add a field: rsvd2. This field is an explicit
> > marker for the padding space added on certain platforms as a result of the
> > enlargement of the result field from 32 bit to 64 bits in size.
>
> Charles,
> Could you reply with your "Signed-off-by" so I can apply this patch?
> Thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
