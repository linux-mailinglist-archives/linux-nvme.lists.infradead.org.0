Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F7510A3C4
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 19:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zabxVaFk73Sxj4xGAyTpk1CNRAEka3Hc9l3WoWR6Bl8=; b=fpjGblFP6N4qUt
	UCJl9BiJe/j4grqV+d9zAqIXqxhw8mDLG5Q34YivW0FlwA6MzjvgoA2q+DvJ1hf3vOLu/kaz5PIUP
	c6mOUyfVwi2lVCBircblLm8/jv0fBvAxuUebN/d84h76i8++rtBniO1j1Yj5rprZzAibNS5WeL85F
	xn1NMX6ennBTFUVFvF0DoMWrp8jF+c0jG4nw93RrQn6QgQXW6CHZePD0pZy3DLPjiTw+R6BUbXW9y
	QdahSpJsw3GeZmvMgLrz+Czt0u0FfaZxHzyUffXx32mFtzJVakK4vDfU9SfI2gInI22pLJpvxlpKr
	8WlAZevcOtBqnuZFCyyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZf9y-0007tx-9n; Tue, 26 Nov 2019 18:01:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZf9t-0007tZ-Em
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 18:01:54 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7204B2071A;
 Tue, 26 Nov 2019 18:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791313;
 bh=k5vseHPFcPNtfZolSAZ48U3bYdwd6sjrLwHHme7ig8I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R9C13BSZRlyhWRa8wH4Agmgbvd3aN9xPYk//rXrb2IDebKlIwlGvOxFQLMa8di81G
 yh2Q2AdBd//ehN3pOl6ktJFepYLj78PDqK3A2Nntdfe8QFcxzjlkD5wOpHnXIEjvxy
 bXURiAYWkRrn4wa8et7tZN6DpuD5oSXIQMnbdKks=
Date: Wed, 27 Nov 2019 03:01:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: fix double-free scenarios on hw queues
Message-ID: <20191126180146.GA17230@redsun51.ssa.fujisawa.hgst.com>
References: <20191121175937.19615-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121175937.19615-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100153_527783_BDE8822F 
X-CRM114-Status: UNSURE (   6.12  )
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
