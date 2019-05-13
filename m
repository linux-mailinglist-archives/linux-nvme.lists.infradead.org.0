Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D781B6F5
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHNDnRAMVILrI1mpQjd5ErXAZK5c0Yi8RuWin/P+31U=; b=jz9RQCn8TkOw14
	rHMppQ8JhPGvC6I9JmPNWqtbYKDNrncrW3IAk98KHDNFppoN/8IwccU0A7VO4GibVSY6AJJtkeOcS
	aBHR1hYPCLoIwGECPxmBVmGF6ECWEAr5qgxyHIPXbyrL8BotETakU6oz+z4yOVvSoe8m+WhoyiK9f
	DjD6gJihVcg6vvOruSH9O3TP4qin+D1it58DSW8SLkvFFYtZet5PE2tuempacctsiM1prv/RCv/fz
	Na9D23uXfsivgRMOQ2r7sg4he/GDqWstDRZSMJzJ1f1lxIMiTKDul1IJWfR+MN/pveyOJNXDQ9Dpa
	qJpiREsGegaxr8q6c+fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAw2-0000mO-1K; Mon, 13 May 2019 13:24:06 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hQAvx-0000mD-RS; Mon, 13 May 2019 13:24:01 +0000
Date: Mon, 13 May 2019 06:24:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-core: trace discovery log change AEN
Message-ID: <20190513132401.GA2661@infradead.org>
References: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>  		trace_nvme_async_event(ctrl, aer_notice_type);
>  		queue_work(nvme_wq, &ctrl->fw_act_work);
>  		break;
> +	case NVME_AER_NOTICE_DISC_CHANGED:
> +		trace_nvme_async_event(ctrl, aer_notice_type);
> +		break;
>  #ifdef CONFIG_NVME_MULTIPATH
>  	case NVME_AER_NOTICE_ANA:
>  		trace_nvme_async_event(ctrl, aer_notice_type);

What about just moving the trace_nvme_async_event call before the
switch statement?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
