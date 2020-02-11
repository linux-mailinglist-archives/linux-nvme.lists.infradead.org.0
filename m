Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A03159A7A
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 21:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hq5OYQdyNXMPJm6G9ISDDLWrIQZ3njUtB+zft94SE9s=; b=qDVmf5cH2MsR0I
	X9wKYPh/TaOvGf6rIdDzBMnQIzxxMADHGLwyqkn4BvEj2b5XyqXtpvn/DxxtoV9TpNQW1yszhugIB
	imWjHdY/WUKH+3xKJM+hW7YzZ5ZbukT12P0PNYXgCRuIBkHRPuo7iDsF7hov82/wMkicvfhkpxuN6
	EjasSNecAOrlxsNSc0jxOMwqVIUORF+NPhOHRjxx38dzhJG3uVK2HO6POSgbtFZndeKw1om/3kdpS
	PbpJSqhduZURjkIkalANmIZZ1ppuMdHOIVVANug7QOpt8OvJboLgQxaLEBE7/1h+Y16Rz4ygiH//l
	F1XlrGEulVAIaQQemYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1c6u-00052k-Ez; Tue, 11 Feb 2020 20:26:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1c6q-00052R-7h
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 20:26:17 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46AAA20708;
 Tue, 11 Feb 2020 20:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581452773;
 bh=XDi6pcZ8ukX55gqAq/lQCdsEJMci7EZ3wYB9O8+uu4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ziX+UOeh89uHeAeNmhDaqi0wReFyTY0pkzKSq2vPtrj/tSMV1WOkp+VIUCfocuAB8
 KytOLbE7bhOl0xgpfWAQ1enJQI9yyBWir/Yn5eHwkJcaZnASOPGSi9zOwCmf0bByvk
 Rfm4+XfBtYHpRnNIQJhIvRM51R55kNbmPQsSHaTY=
Date: Wed, 12 Feb 2020 05:26:09 +0900
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v2] nvme: prevent warning triggered by nvme_stop_keep_alive
Message-ID: <20200211202609.GA19458@redsun51.ssa.fujisawa.hgst.com>
References: <20200211000145.18246-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211000145.18246-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_122616_297306_1A3E943C 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Nigel Kirkland <nigel.kirkland@broadcom.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:01:45PM -0800, James Smart wrote:
> Delayed keep alive work is queued on system workqueue and may be cancelled
> via nvme_stop_keep_alive from nvme_reset_wq, nvme_fc_wq or nvme_wq.
> 
> Check_flush_dependency detects mismatched attributes between the work-queue
> context used to cancel the keep alive work and system-wq. Specifically
> system-wq does not have the WQ_MEM_RECLAIM flag, whereas the contexts used
> to cancel keep alive work have WQ_MEM_RECLAIM flag.
> 
> Example warning:
> 
>   workqueue: WQ_MEM_RECLAIM nvme-reset-wq:nvme_fc_reset_ctrl_work [nvme_fc]
> 	is flushing !WQ_MEM_RECLAIM events:nvme_keep_alive_work [nvme_core]
> 
> To avoid the flags mismatch, delayed keep alive work is queued on nvme_wq.
> 
> However this creates a secondary concern where work and a request to cancel
> that work may be in the same work queue - namely err_work in the rdma and
> tcp transports, which will want to flush/cancel the keep alive work which
> will now be on nvme_wq.
> 
> After reviewing the transports, it looks like err_work can be moved to
> nvme_reset_wq. In fact that aligns them better with transition into
> RESETTING and performing related reset work in nvme_reset_wq.
> 
> Change nvme-rdma and nvme-tcp to perform err_work in nvme_reset_wq.
> 
> Signed-off-by: Nigel Kirkland <nigel.kirkland@broadcom.com>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks James, applied to nvme-5.6-rc.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
