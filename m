Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A318545
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbfPxCbhcFgdbaytA0BCQR/Bu+VvdYa4NqcO8DsyLBs=; b=cIYFS6n+a3g4TA
	uKHz7IUEdVwZ5h6B9VQM0cRb+uqVOtzXSwKVWUEyu4KWxUlylt5J0ZGhWEGrSn0q2qUCOpapXmiYE
	CDg1ZWZ+ak2ueID4QlyOHei4GustBo8TUwX+0KaqRH6Ozu2TL6VtU8l9kCSK1NIljxSP6+O2shfsQ
	MtZclbnA3qMzmeItprkQNYV3hnArhU1KRog2SeXK327e/bfuRjmQkXzGdm8NF8CDqT8+yysuOjyPe
	i5GTwWpOTuvrfOOcFhXlUhnlWUMTmIcLXPAhwEsd6HmuGHIJ79EY3Y4a7xuS6EPayFFL1mXaswCWq
	G8XpgEebnbHVi/UE4KOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcMq-0001oI-3a; Thu, 09 May 2019 06:17:20 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcMf-0001nz-8n
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:17:10 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 904D167358; Thu,  9 May 2019 08:16:50 +0200 (CEST)
Date: Thu, 9 May 2019 08:16:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH, RFC 2/2] nvme: validate cntlid during controller
 initialisation
Message-ID: <20190509061650.GC15229@lst.de>
References: <20190508075508.28552-1-hch@lst.de>
 <20190508075508.28552-2-hch@lst.de>
 <SN6PR04MB45279ACEF3572C4F1F00ADF586320@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB45279ACEF3572C4F1F00ADF586320@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_231709_458947_E53A6171 
X-CRM114-Status: UNSURE (   7.76  )
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
Cc: Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "hare@suse.de" <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 06:51:51PM +0000, Chaitanya Kulkarni wrote:
> > +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> > +		if (ctrl->state == NVME_CTRL_DELETING ||
> > +		    ctrl->state == NVME_CTRL_DEAD)
> nvme_change_ctrl_state() is using spinlock to protect the ctrl->state.
> Do we need to protect above check with the spinlock ?

There isn't really any point in taking a lock for doing a read of
a single value from a less than register sized field.  As soon as we
drop the lock the value might change anyway.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
