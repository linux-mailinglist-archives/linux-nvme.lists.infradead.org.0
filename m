Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75EE18FB67
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 18:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwTPX44ZVRGmGr22jdcjdytCfgHzCH2I9K5Y2YiLt0A=; b=ERv9viiKTHpdss
	X8zfqIxi8b+bvsGBOZocYNlsLj73PsTM+C2aQsR/o/Q1p06sFChegsY3ZXkxmhEdrokjK30epsD0h
	RpmyIOYeVycQho0zFpxLw9rG/twL8pf3fAGsR3tuTlBxWtj51ybSeq2WoQZdgk5SbxZhqk1dNPbhl
	YfkliK5oBJqMh7Rz4+t4QZ8h506/5+QjmVLM+AIKeA6GTvUKgjVxdHSSgVrBABZjTO9axRUxsUe4t
	uKhO0CfwS3VsRXRcPVDk8RLfW67wvATfqBUfFpxRnGrzj+ye3/DQE/4Mmf5MfsA2ccY1hOr5pNLuH
	e29FQO6Q9cmld5SB85Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQnP-00088y-9E; Mon, 23 Mar 2020 17:23:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQnK-00088T-Bg
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 17:23:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CBDA568BEB; Mon, 23 Mar 2020 18:23:19 +0100 (CET)
Date: Mon, 23 Mar 2020 18:23:19 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 3/6] nvme: Fix ctrl use-after-free during sysfs deletion
Message-ID: <20200323172319.GA31449@lst.de>
References: <1584899989-14623-1-git-send-email-israelr@mellanox.com>
 <1584899989-14623-4-git-send-email-israelr@mellanox.com>
 <20200323073200.GB30302@lst.de>
 <61aa8efb-67ab-e5a5-8802-61bf30ffa994@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61aa8efb-67ab-e5a5-8802-61bf30ffa994@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_102322_546685_8899999E 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 06:10:23PM +0200, Israel Rukshin wrote:
> There are double calls to nvme_put_ctrl() at the error flows at rdma, tcp, 
> fc and loop.
>
> I will remove those at the next patch.
>
> Is that OK?

Yes.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
