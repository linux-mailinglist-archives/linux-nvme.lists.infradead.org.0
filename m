Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B598910A374
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 18:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zabxVaFk73Sxj4xGAyTpk1CNRAEka3Hc9l3WoWR6Bl8=; b=qbS3oTyKC6H4Ds
	kaPWXeGBbrkgvtc0mtxmVyXxP4CtWjV44YlZyp2d96wRjbtq8PNdEjjAhZW5Vi1TpoNXIJKjMn6+T
	e/h7eL/FsWOUNatO3AAQsSoeblXdONU7cnH3YtpjUUs/BJHV1+5HKc0jpKxBTznDuQKiaEKp6nKJG
	WIxhSTLTXF8OO9WXzL/cCSh1iAzRyuuymcqa3YA80lW7TFCgJ2QsUuARenBbEKAS191ZznZWQdT7T
	wBB+oXZ8u3bvURJwzapXpM7/uVzqe3lEmlR1Mzpbnuc8YjA97q1uBYyPLMhn8a/spera3UFM3txYS
	pLzJYtK3+qM9EOlUqvVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZeoH-0007Ps-NU; Tue, 26 Nov 2019 17:39:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZeoB-0007PF-TP
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 17:39:28 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F40A72073F;
 Tue, 26 Nov 2019 17:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574789967;
 bh=k5vseHPFcPNtfZolSAZ48U3bYdwd6sjrLwHHme7ig8I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bW6qkuLa5PpTQaZ8xRw7cTRReGU2Esv21AFoMtlZa99SPdW4PkSPxIemj/522XYHp
 lmcxXFmNQQWlsPeXu8Js0Jlag6iyVxKqHLdOR6gsV66HbhtbJi5WWGVPEWrVIKTCIB
 1J8NlhSWFP60/dNbS5lyKgDzcE2StpoHcUI2wPdI=
Date: Wed, 27 Nov 2019 02:39:24 +0900
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme_fc : add module to ops template to allow module
 references
Message-ID: <20191126173924.GE2906@redsun51.ssa.fujisawa.hgst.com>
References: <20191114231526.21807-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114231526.21807-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_093927_967791_02F44D6D 
X-CRM114-Status: UNSURE (   6.14  )
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

Applied to nvme/for-5.5

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
