Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7630E58083
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 12:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YciJLY+A7tEKDq8FMMDqluYhabw0ydD2fjQ2zETxpFI=; b=nChzlGElYzo3H8
	rb3UhVASnpj7/io2KZJmFp1HoeVFegI3L+HTb/y1yiyS5AjwW6tjYMK15Xg0sjHObkASFBhdEI0Ku
	BBMEYkHjeXtfs77yTPoiufE/p0X4avIr3eC7hTejorIF9SRv1+Bnsv3UamOARam8Mz62hJ3S2oBrQ
	P3f3Q6a1qYZ0JfyQ3N+nJ4R/St11jrv9Kotnksj5HSKc73M2EUKVJ5OZXKpDBGc3BLCNgg9TSkLIV
	rqcpsaJuOorhaE6btnDDFb48dplxd8dom1A4HUc+F6+/AdIX7MHlClGHl5V+viikFKA/8DVS/dUao
	aED/aMjuQF3BVdhhkIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRma-0000ga-II; Thu, 27 Jun 2019 10:37:36 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRmM-0000g3-Ok
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 10:37:23 +0000
Received: by mail-pg1-x532.google.com with SMTP id 25so835213pgy.4
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 03:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MObgwXC4+xpG5mCxYFyIgB66+8LNdRrFhmn9RhEV0hY=;
 b=b2Lz9EdIXDTHwGBIt8A3IDwmt70SfMRpv1aJcxVNmZ3nCeMt4AebUZcihOwWynpHnW
 nsaJI/F2I0V6D0HxL7X5S2UkKyhEdnEQOlTCaZRbBq5Kg7388Zb26t3tqummV6AG68ax
 GzvmVQqQZ5nQGPCHmtjAMfMjn4+lbJ1cSFhGfBubkqiBY4p0zZy4Tva+IjNkYw9sG6Ks
 JtQg8R1B1krAS9wGF62QKLiIXbzk1+VGEWC2DJ4HanCTduhPVko+o+a34EI2KbCWm9JN
 qt96GTs4OeU+GbbeKd7QxCM95RbCtpObLy3MRj61eNMGrhFqYRqGrTDMG4gPz19VUCzm
 HOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MObgwXC4+xpG5mCxYFyIgB66+8LNdRrFhmn9RhEV0hY=;
 b=W8VasA7qyrdy0mFYnV7MW72/jrJkG9s3rib56ILdExbq9eCzo6ug3i3acEgKoULtPt
 LcEJhq8IYp9L6tR3NVwsVBdfIbiC4pJIpgniVTpL/o6CR3u2bpNx2CyaAMx/9sSijTz8
 l/tvhrnkZu9lLcggYoB1jP/07Pc/Bm4XQk4+VHpqV93C0Fwp5XgAdpeRiMG3LvYRpAZI
 ggT7ic78fitHPOWV96jPrjaVUrzc98uIpr27diQFRh3tndQwvmfgyZk0Lx3Z+8l89tcD
 Wg2a40iVxOvQmobXAqencQNyt2ZBnR0zKkZ7Jyd0yHrUg/ZqJM0GNTpZ2F3gSwcHzsvR
 hieA==
X-Gm-Message-State: APjAAAWdhdPXh+ajTWgSur2ICQ+4upKXX8z+twjb9MpbuxSef7iK7w59
 wvh/pHpa/J6Wo5wsklNiyA0=
X-Google-Smtp-Source: APXvYqyZpVYuOcnPAOKXOmvJjSfCYa65xr/1x7qNwatCLSFfi3i0rBn3vNlHQjtuRIVGYGF7L9mfJQ==
X-Received: by 2002:a63:6cc3:: with SMTP id h186mr3101252pgc.292.1561631841900; 
 Thu, 27 Jun 2019 03:37:21 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j23sm1809128pgb.63.2019.06.27.03.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 03:37:21 -0700 (PDT)
Date: Thu, 27 Jun 2019 19:37:19 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: hch@lst.de, keith.busch@intel.com, sagi@grimberg.me
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
Message-ID: <20190627103719.GC4421@minwooim-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033722_809790_40E6A55E 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Maintainers

Would you guys please give some thoughts about this patch?  I like this
feature WRR addition to the driver so I really want to hear something
from you guys.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
