Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF8C1E2491
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 16:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctSlRXv9GDTJcXVunKlg+DEWv+P4QEJD/mTdGU7XXDw=; b=lnYHHldgq4zerY
	4ycTrPRbEtj2LwcFaPN+6khQ4kNpwI8gyT0ydC+H+3jbV2M+D0UnjHh4AznbXwPWSurzUqJdOukVR
	5ictpgJJ4Au0iyKidQevfZxz0oN6aq9FiNn5NzJJsHQVH4T6zRKyCjEUpuW+X1nJxu5Gj2Dx2J4Zn
	kLUdbwPzEp6IuFAT9mQ7Bxj1mXFUAlC7c/IRBubVKkHwo/7aWEATv+QC5gk9COzp4XF43DOSGhlk9
	nhCtx6CSjmdz4l01MwogDdwTZn+bSR/dFjn9cR3Io2cgJPEQlaHFS81elBy7vUTttPTHjZ90Q1EVz
	IViOK+4ShkHuqRounCLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdaxg-0001Ee-4B; Tue, 26 May 2020 14:53:48 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jdaxa-0001E7-RR; Tue, 26 May 2020 14:53:42 +0000
Date: Tue, 26 May 2020 07:53:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 0/3] lpfc: Fix errors in LS receive refactoring
Message-ID: <20200526145342.GA4348@infradead.org>
References: <20200520185929.48779-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520185929.48779-1-jsmart2021@gmail.com>
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
Cc: axboe@kernel.dk, linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 jejb@linux.ibm.com, kernel-janitors@vger.kernel.org,
 linux-nvme@lists.infradead.org, hch@infradead.org, paul.ely@broadcom.com,
 hare@suse.de, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
