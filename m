Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C354FF0AE6
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 01:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTzig75SkCSd7m+QZfk7GkZ0EohvRRZikAhvV46FSz4=; b=q7jSTYxoJCxX+4JYzgavt8zWT
	Vyjf1joN5szilFXNZh2F+FL4cl3Q3s3mMY53h/mnkGM3s6PbzcNALTNULkcgSom9rM0zmAJM8gOtN
	ctHIHYW1Vq40Q5ULJXrd/Q8QmPBVSRFR5HF14MlBDdHYaC0ldjAs22tVfFgVIasz3QqKJggJEV/1/
	4iPpbHLtsVaCql+U6Nf02hTNF8jqhG7Q5OR5x7UPW3uSNE1Xw0ZRaHfONgbKpf2/IBe9bvPzjTSgT
	yex09Ov8pTQf1XovBoNu/L9LRlFJzA8nN5u2S3wRZkCbfDp96H/MSKasZhuPTyyc9x1OW0YlWwNaS
	7y6ReNUNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8sN-0006x4-Af; Wed, 06 Nov 2019 00:08:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8sI-0006wf-Fv
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 00:08:39 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FC65214D8;
 Wed,  6 Nov 2019 00:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572998917;
 bh=d8eua9epBG5FR3oyfrO8a6KH1Z3GMMnPGdw78PUjkOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IgO5vzyKQlxiswiCAv0ySsNr5xM1suuJtgO7N2+x28RU45JBffkFf8N1OQ1FM5xwj
 5iRqXhFjvhJhQoqhcEIHBCXDk/TGpDXiYcaexlLUYr3xOGgo7y+HdR7OdCAAaLAvmg
 Sz8QqvITUCvfXHe1KPDcbG8ywsRAAk7yZZLnQ94A=
Date: Tue, 5 Nov 2019 19:08:36 -0500
From: Sasha Levin <sashal@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
Message-ID: <20191106000836.GH4787@sasha-vm>
References: <20191105061510.22233-1-csm10495@gmail.com>
 <442718702.90376810.1572939552776.JavaMail.zimbra@kalray.eu>
 <20191105153144.GA12437@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105153144.GA12437@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_160838_550235_050BA362 
X-CRM114-Status: UNSURE (   9.17  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Marta Rybczynska <mrybczyn@kalray.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Charles Machalow <csm10495@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 stable@vger.kernel.org, kbusch <kbusch@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 04:31:44PM +0100, Christoph Hellwig wrote:
>On Tue, Nov 05, 2019 at 08:39:12AM +0100, Marta Rybczynska wrote:
>> Looks good to me. However, please note that the new ioctl made it already to 5.3.8.
>
>It wasn't in 5.3, but it seems like you are right and it somehow got
>picked for the stable releases.
>
>Sasha, can you please revert 76d609da9ed1cc0dc780e2b539d7b827ce28f182
>in 5.3-stable ASAP and make sure crap like backporting new ABIs that
>haven't seen a release yet is never ever going to happen again?

Sure, I'll revert it. I guess I wasn't expecting to see something like
this in a -rc release. How did it make it into one if it's not a fix?

-- 
Thanks,
Sasha

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
