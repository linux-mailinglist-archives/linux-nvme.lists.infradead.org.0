Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A890684EA
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 10:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sozjtyCQP/Nk5Jt/LugdHv246iQ6iw6Xi7Z+xh/brCM=; b=jo9HX7Ui7jR146
	s5b2xdHELWyrum5Ky81Oq3ChVoht4NjwAwbRgH8DUjJSwxCUcxFxEbp9kN+OWvyx5QMwb4Ik0ugZ4
	hehmuJy5ksQgS+2EEo8IrVtomKiSteLV1XhWEUTTIgeE2stXXch1WbLoRH4SNhP8p8A9Vtf04Hc26
	soeq3LNkFsQMmfV50xSpDzS/polk8aDsPlluIU0VIboiNwSN8IZfrhjKT5doatmmyVV6IzhB7AR7q
	tkRl6Ba0b6hKej0qGVYgTtUxQPg6SvOxATFTXpZmyYysiAUOgAHTRqPbp5iADy+w4CLSuEmMn4B4j
	n7LrO/9h/xKN0ZnBIfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmw4T-0007YG-2i; Mon, 15 Jul 2019 08:10:53 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmw4J-0007XV-DY
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 08:10:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6670C68B05; Mon, 15 Jul 2019 10:10:41 +0200 (CEST)
Date: Mon, 15 Jul 2019 10:10:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH] nvme: Add support for Apple 2018+ models
Message-ID: <20190715081041.GB31791@lst.de>
References: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_011043_619110_615CC458 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	/*
> +	 * Apple 2018 and latter variant has a few issues
> +	 */
> +	NVME_QUIRK_APPLE_2018			= (1 << 10),

We try to have quirks for the actual issue, so this should be one quirk
for the irq vectors issues, and another for the sq entry size.  Note that
NVMe actually has the concept of an I/O queue entry size (IOSQES in the
Cc register based on values reported in the SQES field in Identify
Controller.  Do these controllers report anything interesting there?

At the very least I'd make all the terminology based on that and then
just treat the Apple controllers as a buggy implementation of that model.

Btw, are there open source darwin NVMe driver that could explain this
mess a little better?

> @@ -504,8 +505,11 @@ static inline void nvme_write_sq_db(struct nvme_queue *nvmeq, bool write_sq)
>  static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
>  			    bool write_sq)
>  {
> +	u16 sq_actual_pos;
> +
>  	spin_lock(&nvmeq->sq_lock);
> -	memcpy(&nvmeq->sq_cmds[nvmeq->sq_tail], cmd, sizeof(*cmd));
> +	sq_actual_pos = nvmeq->sq_tail << nvmeq->sq_extra_shift;
> +	memcpy(&nvmeq->sq_cmds[sq_actual_pos], cmd, sizeof(*cmd));

This is a little too magic.  I think we'd better off making sq_cmds
a void array and use manual indexing, at least that makes it very
obvious what is going on.

> -				nvmeq->sq_cmds, SQ_SIZE(nvmeq->q_depth));
> +				nvmeq->sq_cmds, SQ_SIZE(nvmeq));

Btw, chaning SQ_SIZE to take the queue seems like something that should
be split into a prep patch, making the main change a lot smaller.

> -	if (!polled)
> +	if (!polled) {
> +
> +		/*
> +		 * On Apple 2018 or later implementations, only vector 0 is accepted

Please fix the > 80 char line.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
