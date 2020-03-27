Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95332195D74
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 19:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkbBgXjIszPkhQYDFFuVqhpHiIxxPS15ewu5hV5MJQI=; b=Nd1OfRGdDCnU77
	3NVVaigh79ehCo09CtxknZKB+EWOvNMxDTeru0WaIRxiWqcgJKFDABbq/APLckGU8XHpuUojDkmpd
	MyOFJtCwwPFIldet4b5BwW2LVmO+UlYwXoIPJN04qmdqpW9B72vy3b+cHKkSFIgBOgm240wNtKxe6
	8pLpPocAetjOc3vy5W3Bcv+ptS+rtxMt/+bQaJoL6QkPaaRGPHrkK8u7xLkks0jaWcg2XSmITVwXa
	MRNj0Z+cjbhlkdv5uy0ZnNOdmJQdC0we+MOAJSCL+wApdSRGXVQ/CQVs0wIzPqB4Bas+kVNmOYSlW
	TdiW+XZnrhPwyCXpdO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtYz-0002yh-Im; Fri, 27 Mar 2020 18:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtYv-0002yM-Li
 for linux-nvme@lists.infradead.org; Fri, 27 Mar 2020 18:18:34 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFF742083E;
 Fri, 27 Mar 2020 18:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585333112;
 bh=nD1ZASDin7IOUe/665O+N3wleArI2IiupnuXq6p37/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0MFRh6Tqf32c/CY26P6nrLMdJDOc6f/E8tygCg5stx2gYsuuEOpUS4B+rYa563rkI
 EeQfyM6ZB1JpwQkM72ZyTSn8teCyqqVAtimB3Ziln92WNuBiUGaqPVTo2g2o2vrJh4
 P3ZF85J5gqJepjB2WMibEM8sfNyZI/gKEbAQ8QVI=
Date: Sat, 28 Mar 2020 03:18:25 +0900
From: Keith Busch <kbusch@kernel.org>
To: Tokunori Ikegami <ikegami.t@gmail.com>
Subject: Re: [PATCH] block, nvme: Increase max segments parameter setting value
Message-ID: <20200327181825.GA8356@redsun51.ssa.fujisawa.hgst.com>
References: <20200323182324.3243-1-ikegami.t@gmail.com>
 <BYAPR04MB4965BAF4C0300E1206B049A586F00@BYAPR04MB4965.namprd04.prod.outlook.com>
 <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
 <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
 <6b73db44-ca3f-4285-0c91-dc1b1a5ca9f1@gmail.com>
 <dc3a3e88-f062-b7df-dd18-18fb76e68e0c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc3a3e88-f062-b7df-dd18-18fb76e68e0c@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_111833_743590_DBC4FC63 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 02:50:43AM +0900, Tokunori Ikegami wrote:
> On 2020/03/25 1:51, Tokunori Ikegami wrote:
> > On 2020/03/24 9:02, Keith Busch wrote:
> > > We didn't have 32-bit max segments before, though. Why was 16-bits
> > > enough in older kernels? Which kernel did this stop working?
> > Now I am asking the detail information to the reporter so let me
> > update later.  That was able to use the same command script with the
> > large data length in the past.
> 
> I have just confirmed the detail so let me update below.
> 
> The data length 20,531,712 (0x1394A00) is used on kernel 3.10.0 (CentOS
> 64bit).
> Also it is failed on kernel 10 4.10.0 (Ubuntu 32bit).
> But just confirmed it as succeeded on both 4.15.0 (Ubuntu 32bit) and 4.15.1
> (Ubuntu 64bit).
> So the original 20,531,712 length failure issue seems already resolved.
> 
> I tested the data length 0x10000000 (268,435,456) and it is failed
> But now confirmed it as failed on all the above kernel versions.
> Also the patch fixes only this 0x10000000 length failure issue.

This is actually even more confusing. We do not support 256MB transfers
within a single command in the pci nvme driver anymore. The max is 4MB,
so I don't see how increasing the max segments will help: you should be
hitting the 'max_sectors' limit if you don't hit the segment limit first.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
