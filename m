Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDF82FA8
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 12:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuOUgIkOqK1+JwF7HnzOp7S1hF+s1y6gh2JNMX+p7ws=; b=ZKJQ81C8qivEfx
	gCZVGxpjJE1uV9L3aZNi4Tyb7vVSlWjPWlBRtssks0kIULgQ+a2s+8u2LsHe+rDQQTshM9DUOj1Ru
	PbX03xVT6jjtnrHinu+5V9KfEmBYh+I+MbwwCQ6+EOsIs1SN4dfhZi3kPl1ZMnBAVUWWSZroSFE2Z
	fHtJ2ucQKb1fzkPfiEFm4pT210OEOGYXfxiq+GLU3yT3sLBhx3l4OlrVKrnA00wQVtetXTdPXkO5b
	ZluKWyqsw2T8nhSUo1P92+QLunletEtEBW6KHarQzKLa1YrRmbM/Q3uK4Fp1qOKJ8mzh7kXtv6cNp
	uTRcRT5GDaiDBjWdK9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwdS-0005cU-8g; Tue, 06 Aug 2019 10:24:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwdF-0005bt-KB
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 10:23:54 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so81805517edv.6
 for <linux-nvme@lists.infradead.org>; Tue, 06 Aug 2019 03:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nHAZm0GZeVyi0k2jXAqZJ6+K/F+OXmkni52x4h/2WKU=;
 b=W6yaIi5Eo9POup4WUZfRIHlyJ8IGxq+DvAHVwLOkie5rWs0Fk9vvDlFBrcwFpoK+VL
 Tj0JydlTDm1RimAaQo0IBtt0NGVl1bzVHDI3DDYlzgCDaqlQoQAc43r3qj7Ivm8RcyhC
 eJKN/HvOYiTmeFsPcLvX9daiIIXSgCUlLR/bJOUTieraPl+UPBZrrJQFtXaclzq/bra+
 AF+Zksj+MchmgA6LNPHlmULwQwjjdyA4PjX01pHQg3/ZCrqEzkOKxlLBpKVN6jmSv01r
 C80UUtClWdQqFzFISc93OQENgf7/tFHSDLNumfYDptwVttiXjO3XgQEc1Tc+85IfBkBA
 9y8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nHAZm0GZeVyi0k2jXAqZJ6+K/F+OXmkni52x4h/2WKU=;
 b=iqn9WL9w5v9WhAgspqHao7UEyZL+zV4YpKpdgnVbBAu1a3472FAnLdFUwvAOk4nKiE
 WT3honaFVXsKObPNF69+LxD6GBQ2NZnb8E1gXaTeOZMzHJ3fihEF6kQ7iljkAjmLYfoB
 sSSicRH8v9+3T4xuMm9NVkiNt8InamIennu71bnuQ+PyyAwNx+CtlAsWu3VTUhDunZVE
 HQg8qpfkwtm8XuDSyLKQSLDrZYkhT1S35TGk8+XhapdNz5F+/aNlnxF7SztGm+uD4ubU
 32b6BlYJtzdbMggeYpH6ysSBcrfjvYr98pkije50G8poybpGKt50o1qOD1x65tUlGaop
 MBkg==
X-Gm-Message-State: APjAAAV2xH5RHrmPbArREcyDMgDjlP+ZOyt/NfSClx4CBQio77j8ZDF4
 P2+9KkOY/o6gSa1X78/Lg54=
X-Google-Smtp-Source: APXvYqxNSOOeEKipsPzXzNB35eNLgJeH0dlFgOZerwtyAg1/J6mRzv95o7+dpOqMTQU7nPiqxQkS0w==
X-Received: by 2002:a17:906:8386:: with SMTP id
 p6mr2356514ejx.139.1565087031956; 
 Tue, 06 Aug 2019 03:23:51 -0700 (PDT)
Received: from continental ([187.112.244.117])
 by smtp.gmail.com with ESMTPSA id jt17sm14779247ejb.90.2019.08.06.03.23.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 03:23:51 -0700 (PDT)
Date: Tue, 6 Aug 2019 07:24:56 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] block: Remove request_queue argument from
 blk_execute_rq_nowait
Message-ID: <20190806102456.GA29914@continental>
References: <20190806011754.7722-1-marcos.souza.org@gmail.com>
 <20190806051911.GA13409@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806051911.GA13409@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_032353_691223_8BBCF99A 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marcos.souza.org[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 "open list:NVM EXPRESS DRIVER" <linux-nvme@lists.infradead.org>,
 Kai =?iso-8859-1?Q?M=E4kisara?= <Kai.Makisara@kolumbus.fi>,
 "open list:BLOCK LAYER" <linux-block@vger.kernel.org>,
 "open list:SCSI TARGET SUBSYSTEM" <target-devel@vger.kernel.org>,
 Doug Gilbert <dgilbert@interlog.com>, Keith Busch <kbusch@kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 "open list:SCSI SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 Omar Sandoval <osandov@fb.com>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 07:19:11AM +0200, Christoph Hellwig wrote:
> On Mon, Aug 05, 2019 at 10:17:51PM -0300, Marcos Paulo de Souza wrote:
> > +void blk_execute_rq_nowait(struct gendisk *bd_disk, struct request *rq,
> > +			int at_head, rq_end_io_fn *done)
> 
> We store a ->rq_disk in struct request, so we should also not need
> that.  And at_head should either become a bool, or be replaced with
> a flags argument, ints used boolean are usually not a good idea.

Makes sense.

> 
> > @@ -81,7 +80,7 @@ void blk_execute_rq(struct request_queue *q, struct gendisk *bd_disk,
> 
> And all the same argument changes that apply to blk_execute_rq_nowait
> apply to blk_execute_rq as well.

Thanks for the suggestions, I will send a v2 soon.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
