Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B45451C9A
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y1T7uxYwAGZz9a6uvam2WrTto7bvMYUrD44SjMQH0Q0=; b=HYt+lEHGEDPNxsGbj6/BGikwi9
	u/ZfYY61YaTFpqzJ7x6PzOToCTHGhS0HOqqEFJPICxi2BErw96wDp+gYq/u5FWXPS1ECVecPb/Dod
	vP6VcWt/A5QkZZBBLvxtfCmokjlCWI5+rCowPVysp+c/V8pXU2qulh052yjdZ3uuxQzrAO5NLz4zk
	oJtAN/AvZVs/jIhEYYDU4vFDle31JptJVyFQPO0fL5I2wfppkeK9kKdtQWGBauZ13WJ2EsszCsTHO
	jbBPLvD/cbSkZGdGumsInO38tqju2t2v3irAE5rMMg/XhAQ0g+Anqlab0YLq2n1fV0EHPGBYb+KqP
	VPzNNKzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVws-00076a-4m; Mon, 24 Jun 2019 20:52:22 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVwo-00076G-4Y
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:52:19 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (webmail.solarflare.com [12.187.104.26])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us3.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D8BCE60005D;
 Mon, 24 Jun 2019 20:52:15 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ocex03.SolarFlarecom.com
 (10.20.40.36) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 24 Jun
 2019 13:52:11 -0700
References: <20190619173701.8263-1-bvanassche@acm.org>
 <20190619173701.8263-2-bvanassche@acm.org> <87tvcfnw05.fsf@solarflare.com>
 <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
User-agent: mu4e 1.3.1; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Bart Van Assche <bvanassche@acm.org>, <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH nvme-cli 01/13] Remove superfluous casts
In-Reply-To: <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
Date: Mon, 24 Jun 2019 22:51:45 +0200
Message-ID: <87sgryogf2.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ocex03.SolarFlarecom.com (10.20.40.36)
X-MDID: 1561409536-0GMNSUkjpMQ2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_135218_217852_D29B742D 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?62.102.148.158>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, "Martin K .
 Petersen" <martin.petersen@oracle.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Bart Van Assche <bvanassche@acm.org> writes:
 > How about restoring RHEL 7 compatibility with the (untested) patch
 > below?

It is now tested and it works fine: both compilation on rhel7/non-rhel
and some basic functionality testing.

Thank you.

Mikhail Skorzhinskii

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
