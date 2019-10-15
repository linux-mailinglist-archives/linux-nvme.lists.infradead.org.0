Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B09BD7DDF
	for <lists+linux-nvme@lfdr.de>; Tue, 15 Oct 2019 19:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1lddA+wSUEWX+shyusf4ukJBIdhDmiYKm1YFGIjgkU=; b=bVrLoV7811n/1Y
	iEV11pvC5q8UGEKOTdhGOo4fakTkf0//78AsKI8x15NldXj/DAQALMDKG3WaPtfC76Fv99eoOGgyb
	ijh7kEWcCqpBNJf96D2O2z7r7j9bP1PAXvaamQnUUwTW27HkljrFGw6Blu1TIDU0K2oDeZlV0JQ56
	6zWxAHW19b9pWcgd8gDNPWhJWI9NZuYh/6I44KJYD/UKecNI1w4QPQUoiliBSN4tWLqPdr2bkNKfT
	twbOZ5yLoNE5IUqHXJM0e18zw7fwR0V5+4n0IblVWtsvVL0ZkRMIBuBYWfshSDYntdZGY743+GnGr
	htzbKe8cdTOCU+VuJhNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQgg-0007d1-Va; Tue, 15 Oct 2019 17:32:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQfZ-0006jL-Te
 for linux-nvme@lists.infradead.org; Tue, 15 Oct 2019 17:31:39 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3571C20650;
 Tue, 15 Oct 2019 17:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571160696;
 bh=D5hhBlWpcUPX9EETzDbthHE3wvpyfVL1wrfecKvo0Co=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TZoZVAcr2KJ/8Hr0NFKNbzchKAipCjp79sa4OIU+o9xbTjcFLqZ5eVRgGM4Yobj4p
 wpOKJNIxDwRN0vgZNCEU6AZtHYcIHYqu9ITxWo+lJEk6rkFCRB8xSlsuuiDBtja23I
 Zn4O53ki8jbsvSsFFQ7qQhdBuBRsJaijpKGYdEgY=
Date: Wed, 16 Oct 2019 02:31:31 +0900
From: Keith Busch <kbusch@kernel.org>
To: Revanth Rajashekar <revanth.rajashekar@intel.com>
Subject: Re: [PATCH] nvme: resync include/linux/nvme.h with nvmecli
Message-ID: <20191015173131.GA2832@redsun51.ssa.fujisawa.hgst.com>
References: <20191015155402.10462-1-revanth.rajashekar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015155402.10462-1-revanth.rajashekar@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103138_001139_15D1EB08 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 09:54:02AM -0600, Revanth Rajashekar wrote:
> Update enumerations and structures in include/linux/nvme.h
> to resync with the nvmecli.
> 
> All the updates are mentioned in the ratified NVMe 1.4 spec
> https://nvmexpress.org/wp-content/uploads/NVM-Express-1_4-2019.06.10-Ratified.pdf
> 
> Signed-off-by: Revanth Rajashekar <revanth.rajashekar@intel.com>

Thanks, applied to nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
