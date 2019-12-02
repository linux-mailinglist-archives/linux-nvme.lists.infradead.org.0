Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCB010F216
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 22:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5OaCIRIMSLrTS7kubZkiLwtUZf1JlvRrQWXHZWDf9E=; b=RaFCdIiso+MWrE
	tpur/x+vFQBUvd+5LlBJELJtrEzQA1oWQWAQbxtod5FGkIFbgNg4H/IPMGh4YcvMVMfIUpClKbrFh
	VU10vFfqttDM4GZw/ix81TypgeorzUvKc8hy9cUsULBaiZldi69Ge1Yk0XQ57hthqENrvEC4D5xav
	sMiMhMm3C2cHBW7Thc7kDA9xAzvTmCufGIddiVRaCCIdgVAg+lW1cICQ/dJEV81C4kul2HQceHdbj
	gdepZVCJI8RaCnvRs2Q3l1XE1BG3zbFV6KNGqEJk1i0gXuKYs8DxaOFwEpL5vqg55u2hOP9ES4hyU
	3k47O4AJoWjGXxhKQ5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibt8g-0000HD-Hk; Mon, 02 Dec 2019 21:21:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibt8c-0000Gr-MW
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 21:21:47 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A34E206ED;
 Mon,  2 Dec 2019 21:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575321706;
 bh=KWOzQgN2GjtJ55UhrH4KqmGcy50+XJNobEXbyl1W4Tg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aeBSF0oUHHlTIDzqO/WWMhkIvNTF3wuN5mLriVvhk9pLdHIV8kB+8xjINMaiJz0Ew
 Y15zuGAuS2H0JHjv2XOggRdbfT5pjnpBQ4LmPwB8r7vFWIP5FLlj2W8td634cEn/Sz
 zKexGN4+d/Pw/+pbDpq/qf4l6huYVxm06qMFkzCE=
Date: Tue, 3 Dec 2019 06:21:40 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: Namepace identification descriptor list is optional
Message-ID: <20191202212140.GA25428@redsun51.ssa.fujisawa.hgst.com>
References: <20191202155611.21549-1-kbusch@kernel.org>
 <20191202161545.GA7434@lst.de>
 <20191202162256.GA21631@redsun51.ssa.fujisawa.hgst.com>
 <10e6520d-bc8c-94ff-00c4-32a727131b89@intel.com>
 <20191202162905.GA7683@lst.de>
 <20191202164903.GA21650@redsun51.ssa.fujisawa.hgst.com>
 <20191202173414.GA8950@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202173414.GA8950@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_132146_754594_0159E178 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ingo Brunberg <ingo_brunberg@web.de>, linux-nvme@lists.infradead.org,
 "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 06:34:14PM +0100, Christoph Hellwig wrote:
> Yes. I guess your patch is the best thing for now:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, applied for-5.5
 
> But I think we might need a new kernel tain flag or something like
> it for devices that are so obviously broken in their identifiers.

That's fine with me. We currently just log a warning when an error
is returned here, we can add_taint() too. Which flag do you think?
TAINT_FIRMWARE_WORKAROUND, TAINT_CRAP, or something else?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
