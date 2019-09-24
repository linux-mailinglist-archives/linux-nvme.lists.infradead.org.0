Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FBFBCADB
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Sep 2019 17:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tW9HJZuQ1hLtElNbEhbVBmSjcmt7ySTzEEHCaZK7blo=; b=EgU6iTbdt1e2pJ
	GGIAF21miTtrHWQRCnkZp1cBRLvCTlu0v5RfQzadyR9e4iHte9TK31kL4BmxVlbFiYc1BmOrF27BZ
	DHGzI4aw8fmzQxc/Bn+VdSRv6Soqf8uJkONoHr0fW5Z7yO+zaNk0Qpcwj4JEyfX9JhNVjhSIQulXF
	YYgf8yFG9QbpGqqqJFqd8x903PqHviddSOuhAygXtr3WPpUlJmQJDK4y0rWsJm5IvnzHF2ZHJDOly
	tpvNMLyx9iwU1aMahADWHQINgbAlqJW64mMEDqwmeDxqbqM/7Y7p0t1SJ3JgW0nXvvA8SsuZEMqjm
	Bh0CH1rtW1fpac5N6Nfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmPo-0005bN-4G; Tue, 24 Sep 2019 15:07:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmPW-0005b1-Pk
 for linux-nvme@lists.infradead.org; Tue, 24 Sep 2019 15:07:28 +0000
Received: from C02WT3WMHTD6 (unknown [8.25.222.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07F59214DA;
 Tue, 24 Sep 2019 15:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569337645;
 bh=UunFgAk6d8zsWESVvOrrvRAZj6+71PQz9u5zjdWb3Es=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a0bB7XPmdG0PxgPGbaKWMY0xBhoxpA8yuxKDGBNIVt4qPHMmp+eL9HQPVXq6AI/QE
 OwKAr/PO9etlc4CZtFwF8LUhDbh1LOmxk/XqGWY1EiAIpNfANUgSVd+vf+NRmKGy9Q
 i251BOW/pofqRwx/25xXOxn8fbpVUeR3sV2B7Pc0=
Date: Tue, 24 Sep 2019 08:07:23 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 0/6] nvme: double reset prevention
Message-ID: <20190924150723.GA21929@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <8cc6bc39-a060-3128-bf19-afb06a5c36ac@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8cc6bc39-a060-3128-bf19-afb06a5c36ac@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_080726_865258_F4E69EBA 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 03:09:43PM -0700, Sagi Grimberg wrote:
> Keith,
> 
> The series looks fine to me, do you think we need more eyes on
> this or we should go ahead and apply this?

Sure, I think the series is okay as-is. It will clash with a fix from
Mario, though, so one of us will have to rebase.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
