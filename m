Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F9B86F2E
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 03:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXDYANzzq/rbkdzOB4Z4+u8r3h3g4GOMxsxnLwzUjGM=; b=BtznkJfaOj0wDI
	tPTKn1Hsjg+gyX8oiTr1+pOQfv6rdTgrkFybleSkObbSkbI+jqrvmpunilaI0OUSMCRHQhWV7oyGi
	xeZfh2n0Nq2A6G3s3coHrHPBVuEzgLtOpQPMZhzrvARIKTItuRfcuOYL6euMaNTxlfEm2TfbsJLd7
	21wQKtznux3/wGcUDza1JN7X3H/dTChM5kqizSq5mr9dqtRZzkVPIOhKzcvIBIIbZFBmv7qb5Khb0
	PzTKMit/44oSQX82TkuLXAi+8bbkq9HJnm0w/eV35B3MtKtQY0zdOhQ24wluQC5CSQpLT3FiMzJ2U
	0eaPUJiUBfb2MjvybMcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvtU6-0004VK-SE; Fri, 09 Aug 2019 01:14:22 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvtTq-0004V0-Ro
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 01:14:08 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x791DnD5032286;
 Thu, 8 Aug 2019 20:13:51 -0500
Message-ID: <885b0189e457095b73c8fd7fa7aaa1946d5c614f.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 0/4] nvme-pci: Support for Apple 201+ (T2 chip)
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Date: Fri, 09 Aug 2019 11:13:49 +1000
In-Reply-To: <ae14ef26-b4a5-1ef2-e2a9-581e813893fe@grimberg.me>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <ae14ef26-b4a5-1ef2-e2a9-581e813893fe@grimberg.me>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_181407_048682_EB16EC55 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 16:52 -0700, Sagi Grimberg wrote:
> > This series combines the original series and an updated version of
> > the
> > shared tags patch, and is rebased on nvme-5.4.
> > 
> > This adds support for the controller found in recent Apple machines
> > which is basically a SW emulated NVME controller in the T2 chip.
> > 
> > The original reverse engineering work was done by
> > Paul Pawlowski <paul@mrarm.io>.
> 
> Thanks, pulled to nvme-5.4

Thanks !

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
