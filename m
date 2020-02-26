Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52509170756
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 19:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5DWuIaQdzvxUToAC6UiY/yryJR09OAUwHdcKZE8KIU=; b=GveIGFynkDYU2N
	HublchGprmqHo4obyOFSurb/Ad3bNKDYIMgTlln22WjPei7FsJP2M2ODiuCLnh6CDboK2LrTKdd5K
	BD9yNAmL7epCa8HSAJq7PyGc1QVib/REzSI3C0wbzD7KraO5+OUZwm3djKbH+n/nBjAJl1+RK2kDu
	zMpPe3Fo4BlKpy38odLWaGXgzB3rQXtvHPcjVcUvafjkZL/a2Mn7NNOqn2lkitIJ3F8yskxwxkIRK
	MUVNUKlfi48bPfpmuHSCCruzCIYr5Cy7Bjq3hkwVmVedsRVKQRwFAK4wQdifBkqXSh+6V8UxWz38m
	QHlYDIt8786lJFQxb8/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j719w-0005FS-SB; Wed, 26 Feb 2020 18:11:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j716h-0001Fq-Sq
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 18:08:29 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5461724650;
 Wed, 26 Feb 2020 18:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582740506;
 bh=CyH5Cj+lK4LdkjdulLh4uDHWRzDbMUJnvuyfXtec9n8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Btec+EwUVo3ENmRKI0X1EQ/SGCjz3U1LEZloDDFUBSvhCa+rrgMjmO18+ACW6z72i
 0MoiRId+OmwaKCyNdHQaR/XAzM6f9pmh5xGcjAyMl+1dSukyebOJT4N2TJwIo2u0vJ
 6KU836rtZ7hXF7FXExozxTrHrVlqDbVxZBDjqJcA=
Date: Thu, 27 Feb 2020 03:08:19 +0900
From: Keith Busch <kbusch@kernel.org>
To: Balbir Singh <sblbir@amazon.com>
Subject: Re: [PATCH v2 4/5] drivers/nvme/host/core.c: Convert to use
 set_capacity_revalidate_and_notify
Message-ID: <20200226180819.GA23813@redsun51.ssa.fujisawa.hgst.com>
References: <20200225200129.6687-1-sblbir@amazon.com>
 <20200225200129.6687-5-sblbir@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225200129.6687-5-sblbir@amazon.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100828_070251_DE9FDB57 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, mst@redhat.com,
 jejb@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 08:01:28PM +0000, Balbir Singh wrote:
> block/genhd provides set_capacity_revalidate_and_notify() for
> sending RESIZE notifications via uevents. This notification is
> newly added to NVME devices
> 
> Signed-off-by: Balbir Singh <sblbir@amazon.com>

Patch looks fine. Please change the commit subject prefix to just "nvme:"
to match the local style and for length constraints (the committer may
do this if they want).

Acked-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
