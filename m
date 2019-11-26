Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A380C10A373
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 18:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUf8SX/o+W6ZO97XoUzXx/2oWp3ei0g9Z13tV7Qdaj8=; b=ae2V+zn/SOJizj
	JzyXH9OGdbxJ4sbS/4tYeUMkyGwJ7MHHAa/QQeMrimByt1v1RZSf+yjq4DOYPdjo5f9pT4eiBz1Yn
	T0atrSAZ8xClXVvdqAYvF7hEVMUTNHzO1S+gRmLNmeLq8sqfBOedqza9e+QH1J5A0vUiYnoIdW865
	h9YwJyOfJr1Rr0EmS+UuZCQExN+MvN3ITbsxn9kqIas76WvNNMIrrtBpRK7+NEh8m42oRb/JFmF7F
	11thJrjeJPZ1oZIU90IPrHZ8E6kXTFh0oggbs6JQxqxIcrhbBdaiIOskUOmyY5/w01RweUJpOaag1
	D4RmfXc2f4A7LVrkdd6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZeny-0007EX-NV; Tue, 26 Nov 2019 17:39:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZenr-0007EE-Sf
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 17:39:08 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24D742073F;
 Tue, 26 Nov 2019 17:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574789947;
 bh=VpD5ivs0yeLLzNWNy8SZ5F/LaouRn9OSkb5AVyRv6vE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X6PG/+ji0u1xIFR1CNOt4dJr67JLRGgqcNPJyTHK6hsLknsgq6WRYT3sm9rkqNATm
 TqG5CmVXq8Hwea+gmwcd9IdQ239eJ7koPgBz4SO1tJN7oyZQ8xYaUn8/fnF0hocJj6
 Xh2dl8TePVXlyhPkzgIxW1fZJYObGKkiAHs2japs=
Date: Wed, 27 Nov 2019 02:39:05 +0900
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme: add error message on mismatching controller ids
Message-ID: <20191126173905.GD2906@redsun51.ssa.fujisawa.hgst.com>
References: <20191121175810.19501-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121175810.19501-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_093907_946561_40F17E51 
X-CRM114-Status: UNSURE (   6.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme/for-5.5 with the minor word-wrap adjustment on the
commit log.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
