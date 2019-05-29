Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6A2DE3E
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 15:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fClM71EZiGict6vVNUsj6yfBCCZlycrsgkKvYVr3j5w=; b=Vjl6qm4IRhkgZF
	/CyuFqCVM2hflVPwJi3QPm+UZhClJkPWLr8v3nOzv+ghf9PSI+I8GzH1KPMJom6l9mxT04GR0my0j
	cob/JpiqO1in/I55pP9B77xHhPMWBzM14aMyiogFT0W5AkXsSz1AnHndeJ19UW7PkPYJyjwUL+FQR
	apz4A/3dkxW82m+FP0wt0FCb636e9Nregs9hNWYRgUdxBluskkY9CDFz2xNj1IahZOAh/RZ5aTlYy
	5NgrtMoo15Jw8MjNhWAjH/18mHmG8kPhMDuxeJ8TW8+e54kk7Gdh2zoWEq+1f3scOVB8CKSvyOUWo
	ZTUHrgnujy1LgtEvPRug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVygn-0006CG-DG; Wed, 29 May 2019 13:32:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hVygj-0006C5-CL
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 13:32:17 +0000
Date: Wed, 29 May 2019 06:32:17 -0700
From: Christoph Hellwig <hch@infradead.org>
To: linux-nvme@lists.infradead.org
Subject: [ANNOUNCE] nvmetcli 0.7 release
Message-ID: <20190529133217.GA17786@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

I've tagged a 0.7 release of nvmetcli at:

	git://git.infradead.org/users/hch/nvmetcli.git

and uploaded the release tarball at:

	ftp://ftp.infradead.org/pub/nvmetcli/nvmetcli-0.7.tar.gz
	ftp://ftp.infradead.org/pub/nvmetcli/nvmetcli-0.7.tar.gz.asc

This release includes support for configuring ANA groups, to expose the
port state in the command line, to configure the inline data size as
well as various fixes.

Thanks to Sagi Grimberg, Lee Duncan, Steve Wise and Hannes Reinecke for
their contributions.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
