Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AA1281CD
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWesIIpNTHGjmz+x0EbTFvJ43sAyMiUgH9saw7ruxQk=; b=p2wUrfuSasvDHfjycF3+nBlhs
	M0ABZL0tDHFg8T3qhLE/KgnlEAU/B2oaWn3hRdtAehvGK2GxuEFAmwl9LKHcHgdqBPxUbVVJbfmGL
	wPBys/tpq7idDSQ6wn/6XZrPKBbbif7uxXfDr+X23L7wKsWJ20g94hBm9NsyO4eRpfQ09rlHzMkgI
	mXBE3od13qv2kS3yr5eyywXMFimfdGYFgHuIOZnYLNITe1G3nNxs8kzD3dN7BucDTp6DpHfeE2oHy
	iC87TOpUf8AjC5bL6B7yaMpqCDo7+QrfiChaD4pDNYG6MDBNG2RmEbn+grjQ6sX+ftTClRVvsE1co
	XHXaYTGUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTq1Z-0000E9-ME; Thu, 23 May 2019 15:52:57 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTq1T-0000Dp-VL
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:52:53 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4NFjNWj005320; Thu, 23 May 2019 08:52:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=u1k2GuT3meseewcEo3e6g+0eH+2MBT1PH1sFAl4nveE=;
 b=I98a7VsgZlCjvib7hoAZfrK3OUTzgq/7TjxVkNpq4xGJid0TexN7fYY3aI6H6TlK6n90
 SUknvrctmrl7l1LPpc2oSvEzWg4xYYTPcYPExyjk9w+uU7mgq2lrbiNSAepgkDZaQ4v8
 Ata+bbZ6ViUaaKdXJRaPBht2WoqNUIoGfkkT77NkTNwHBZN1sXjfaGChZurvhrWtY1us
 DUdT2uB7sZNyR/sG40C6+MIQQ36ELV1me9pY9Tqoa0AO/CdC4HmxlIEoQAGkrkvbm4Ky
 w2C9zUKWDqv/amZJ9Cfcmrvr52o+duunyMzVN0QPYJUyP5GTThhhGH1Y6D609kzMm7Zq Lw== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2snv44rtb8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 23 May 2019 08:52:30 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 23 May
 2019 08:52:30 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Thu, 23 May 2019 08:52:30 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id EE2033F7043;
 Thu, 23 May 2019 08:52:29 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4NFqTAf025378;
 Thu, 23 May 2019 08:52:29 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Thu, 23 May 2019 08:52:29 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <james.smart@broadcom.com>
Subject: Re: [EXT] Re: [PATCH 3/4] nvme-fc: fail reconnect if state change
 fails
In-Reply-To: <e430d6e0-6f0f-8cc1-aba8-f33faa519267@broadcom.com>
Message-ID: <alpine.LRH.2.21.9999.1905230850100.9636@mvluser05.qlc.com>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-4-hare@suse.de>
 <alpine.LRH.2.21.9999.1905221035410.9636@mvluser05.qlc.com>
 <f59abb21-c3e8-1aa3-9246-f4141862aa69@suse.de>
 <e430d6e0-6f0f-8cc1-aba8-f33faa519267@broadcom.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="1879738122-1485147117-1558626749=:9636"
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_13:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_085252_121286_CCCEF6EE 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--1879738122-1485147117-1558626749=:9636
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8BIT

On Thu, 23 May 2019, 8:46am, James Smart wrote:

> External Email
> 
> ----------------------------------------------------------------------
> On 5/22/2019 10:33 PM, Hannes Reinecke wrote:
> > On 5/22/19 7:43 PM, Arun Easi wrote:
> > > 
> > > Question: There is a path in nvme_fc_resume_controller() that schedules
> > > connect_work when controller state is NVME_CTRL_NEW. I am not quite sure
> > > when this is exercised; but if it does, it conflicts with this
> > > expectation.
> > > 
> > To my understanding, the transition from NEW to LIVE is only valid for
> > PCI; NVMe-oF implementations should always move to CONNECTING first, ie
> > they should have a transition NEW -> CONNECTING -> LIVE.
> > 
> > Cheers,
> > 
> > Hannes
> 
> I confirm what Hannes says - when the fc transport moved to an asynchronous
> connect using the reconnect path, as part of controller initial allocation, it
> moves from NEW to (temporarily) RESETTING to CONNECTING then schedules the
> reconnect which should go from there to LIVE in the normal path.  That NEW
> scheduling connect_work, although still present no long occurs. It was from
> the pre-async connect.
> 

Thanks for the history and clarification. Perhaps that could be added in 
the next cleanup round.

--Arun
--1879738122-1485147117-1558626749=:9636
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--1879738122-1485147117-1558626749=:9636--

