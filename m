Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFCC12C6F
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 13:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Knt6WI1DMz9RsRRPWv19biyR3xe5tXBhwL8TUHhu4sw=; b=FxzXrZ3lsqbN7I
	6b1EKejcc3EFQUY6xppYe6vSHinJj/okoYEafyLbKgoDay9VyQ62h8laQFA/GwZOPxR9HPQYxyk8X
	TF2wbXrnjels1ZHhROA/80rYnH1/JfzzdCislzYbKzssXnwY1p+T46UHViNgLDg+ruCzrObC2LlfW
	3VaoWSGccZCPwfXJRliGlzgDKvVQxDZt4kxB3YuLFeX63eODlDZ04LR3vleLqWR9d47qMM2fHrPTt
	ZHK31GqCpk8xFElta1uhhKXLhyAJ38RyWDeNZP+eGcOOz7zIDiVZk6T1ZIdzc7LdcamO904+d3OaT
	v7rB5GQTWbZogC9CEezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWPW-0002wr-GT; Fri, 03 May 2019 11:31:26 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWPR-0002wQ-KU
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 11:31:23 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id CB0F768B05; Fri,  3 May 2019 13:31:00 +0200 (CEST)
Date: Fri, 3 May 2019 13:31:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme-multipath: avoid crash on invalid subsystem
 cntlid enumeration
Message-ID: <20190503113100.GA17468@lst.de>
References: <20190403224158.58106-1-hare@suse.de>
 <20190403224158.58106-2-hare@suse.de>
 <6bb989cf-19a2-9f19-caa4-dd77f90aa6e0@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bb989cf-19a2-9f19-caa4-dd77f90aa6e0@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_043121_826519_C0AB0988 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 01:04:48PM +0200, Hannes Reinecke wrote:
> What's the status of this patch?

Waiting for you to resend the series based on comments on patch 2..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
