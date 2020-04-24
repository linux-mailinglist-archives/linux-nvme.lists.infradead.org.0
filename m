Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B46DE1B7879
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 16:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOmG3uGYDmsojGHEtr7HzC1AxL62Cp6c5nKvXGURC0A=; b=PKnwHqHERcAREk
	FqahU2ITUje3C926mbgp9+2OUVHICgFt19ZYqoLfa7dQ1OoCPcvQAquBNYhXjUIom1nGlrUXCO4hn
	9b06zSeYYNIvGP7gssfOstcIWJD2BN3cMHB9GMlQUwT6f3fzmSgva8Si6sLGweQMylsyY8AvONqwb
	HtAx130mvCHODeHa6FjC5TMn3UIM0//QqAkaZekDqgw1lqs9rKd4ipowluSeDlal6wi/45mzsfhZa
	FD79r5tSo/eBKNWPyeui9ntH5wihRoA2bpb+VgwZDpbqH0uo2F3/OxFIxqOMdAhqJd9YZCCJBYFqd
	g6oChS+hDper0ckWryuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzZY-0008Fy-Pg; Fri, 24 Apr 2020 14:44:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzZS-0008Cy-6n
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 14:44:51 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C99A52071E;
 Fri, 24 Apr 2020 14:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587739487;
 bh=+Lge+OApilp/3v9lNomtj9FBBKlD5jYhd/CuGVoAXps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m2OBFdWyUQxvKucBRT5E8GCaAMfu/QpNv8uyCMJNW+wle2J4+s7caAv7EbINb4Boc
 eob1p3quIC5opOwycRB3ckZQPlnhuItwMQCC9UWRaVrEEsHcVCY9/lyQ/MejebNt97
 UnoEhpVcpE22CjD1j2HgYQblBiI5oxQ6M69E5F0A=
Date: Fri, 24 Apr 2020 23:44:40 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme: fix compiler warnings
Message-ID: <20200424144440.GA21100@redsun51.ssa.fujisawa.hgst.com>
References: <20200424011453.11156-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424011453.11156-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_074450_267256_E2787779 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Applied, thank you for the quick fix.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
