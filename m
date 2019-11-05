Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176BFF015A
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 16:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8p5P95WvdjK4U85PhEZnkxOO2LV5Um8O2YThikSPNbA=; b=eZ2FlMi58GJM4x
	zxcgUi7JodIsw0CX2EhKHJ8MtLX9UN2DukYT0sg3QYhqPoslE0dZ6OvcgPJDzCNaBC8vREwF4xEbl
	Gv8zUTnnO/txGko/fIPmTJcgU7eDwwWKul5u/aeKK5oaklPz4ij3545nXE5M2LiZUTbcGPh8fZbQI
	hyIog/3f8AXkmaO6n8o5aFVgoo9N2/aIt5BNL2egVWQn9PDDQWu5PFl172qTvZREWPHGXurKX2Ojg
	i1b9ipVb6bIYCLVHFOoiD1k9sz3tMCe8xO6NRgO8lNrIxgWf1u9vUl8myXx4JKpRHerqIQUKYYxC/
	RPnNJg95vFlI2Av4sVBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0jW-0003UD-TI; Tue, 05 Nov 2019 15:27:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0jS-0003Tq-9f
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 15:26:59 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F06D92053B;
 Tue,  5 Nov 2019 15:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572967617;
 bh=Y49i5hhOPhJugkrF4npAozYxT0zBE624ImjMcDKVD1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S2w0B03Z3nwij7CLRx7gMlKWgGttnNnXAzBn1oUwsVRmqRs4TQg78leSvtraaFWD2
 tfFJNBhLGpVenI/rE1J15IbdDe8S4SSbb+DL3dOa2WEStmckDBW0d8C40qhfyecyr5
 fp0jHKRLU61DXfZykkUwrwJebdWs8Lk7ULCmM3cE=
Date: Wed, 6 Nov 2019 00:26:54 +0900
From: Keith Busch <kbusch@kernel.org>
To: Charles Machalow <csm10495@gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
Message-ID: <20191105152654.GC22559@redsun51.ssa.fujisawa.hgst.com>
References: <20191105061510.22233-1-csm10495@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105061510.22233-1-csm10495@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_072658_357313_A9E2C37A 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, Nov 04, 2019 at 10:15:10PM -0800, Charles Machalow wrote:
> Changing nvme_passthru_cmd64 to add a field: rsvd2. This field is an explicit
> marker for the padding space added on certain platforms as a result of the
> enlargement of the result field from 32 bit to 64 bits in size.

Charles,
Could you reply with your "Signed-off-by" so I can apply this patch?
Thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
