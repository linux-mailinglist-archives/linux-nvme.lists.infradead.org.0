Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3017188957
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 16:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDgkOB8RNvtUgrqph1T1v4MH5+Kq0wg2hsHepxl/vtE=; b=EWdFc+AU5cJVdj
	q48zY7rzFJHjz611X1Xlk3v7UZr3oUh3ZK+SDDISB4Xd3Djf7+zHE8BRFjcl8/pQHHSd9BN4nNp9b
	0A6SgA3Z2MVzJflt1MDrdmNIv5vd+/icW9vaMLlsdZsi2YZvTWipmDMdlpqfbo77Hf68d/ffJHWwr
	hg1r/d1QwGb6hxAgLHf2tFj/gb9GCj9MthliIbWtLy1Ysc3bdOxO2I0SI7xgLeA59ZmkZYYGwhTjO
	TkJ/BgMWlGVkAI4E4g4AYTVBQ48h/Ka103riyJT+TJA+JqsHKUorlYIkOkAW52Z6vglXr1ALpSCss
	vxaZjwGzc4PC6Bm1Ki4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEENo-0005oO-TD; Tue, 17 Mar 2020 15:43:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEENi-0005nr-BV
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 15:43:51 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 098E120714;
 Tue, 17 Mar 2020 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584459829;
 bh=3M6KQ+x/xS3b9actzvjEtiSqxHD+FssQ/SJMBjO96DM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z4RDNg/j8xNMU4GKgnD8q+wVtufDQchEqw5q4MftWja5Hh2cyJd0f3SxKXwfi7W6C
 S/6v7whedviS9T5cTpBV2mEa7gjORKGgiWKkkQAv31wlSg9H/RzLPRnqqvMpIVbQAk
 k/EYSilHOaA3qM3fojeBHgV8yaX0YxUWwmDYcW44=
Date: Wed, 18 Mar 2020 00:43:43 +0900
From: Keith Busch <kbusch@kernel.org>
To: masahiro31.yamada@kioxia.com
Subject: Re: [PATCH V2] nvme: Add compat_ioctl handler for NVME_IOCTL_SUBMIT_IO
Message-ID: <20200317154343.GA29084@redsun51.ssa.fujisawa.hgst.com>
References: <92c670379c264775b8bb28a2bd3b380b@TGXML281.toshiba.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92c670379c264775b8bb28a2bd3b380b@TGXML281.toshiba.local>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_084350_434100_112C7B88 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: axboe@fb.com, linux-kernel@vger.kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 11:13:29AM +0000, masahiro31.yamada@kioxia.com wrote:
> Currently 32 bit application gets ENOTTY when it calls
> compat_ioctl with NVME_IOCTL_SUBMIT_IO in 64 bit kernel.
> 
> The cause is that the results of sizeof(struct nvme_user_io),
> which is used to define NVME_IOCTL_SUBMIT_IO,
> are not same between 32 bit compiler and 64 bit compiler.
> 
> * 32 bit: the result of sizeof nvme_user_io is 44.
> * 64 bit: the result of sizeof nvme_user_io is 48.
> 
> 64 bit compiler seems to add 32 bit padding for multiple of 8 bytes.
> 
> This patch adds a compat_ioctl handler.
> The handler replaces NVME_IOCTL_SUBMIT_IO32 with NVME_IOCTL_SUBMIT_IO
> in case 32 bit application calls compat_ioctl for submit in 64 bit kernel.
> Then, it calls nvme_ioctl as usual.
> 
> Signed-off-by: Masahiro Yamada (KIOXIA) <masahiro31.yamada@kioxia.com>

Thank you, applied for 5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
