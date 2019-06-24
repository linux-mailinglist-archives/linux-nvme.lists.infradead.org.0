Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB9750932
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 12:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBzSawbXSN2CxOVmS7VwH1tN2MZUSjCBxp+3OuVCb4k=; b=jIE8m6v3XvtZ6l
	DTJDN6CKykDwuiXs2nytbUGzPF1VPSkS1vepVURxVvhRs/AE3HQcWQrvGcDnOlQ9sCpR+d3g7jnWJ
	ADgaYXO2oDD1od2fhn4t7bWl1QSJLyfaLsrYDtEdbYMNzxA/EAjDP2SwZ3Dhb3Mb9IipyHDZvKxNa
	GWrlDw4iTEfPuEJJa7ZXF3wUejuTRIdnoYMqZrKJWAxjowEv6uXa7UNvWsz8W9saMJz1N+EoIfnlI
	aAOoy+ePUQCrGJmhnz33vhC7hfVDQwUEht0RYuA7TbrV7m5D/ItIvm9E920Nd3hv01vSVv6ax5YmS
	/CRAq6LfXOhlG9kB0u8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMXI-0005mO-87; Mon, 24 Jun 2019 10:49:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMXE-0005lf-4e
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 10:49:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id k13so732189pgq.9
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 03:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FHsi0WhZPkpcteRkD1wHNiWe8/Hz2gn0/AW6jsWq7Yk=;
 b=jOkM/Q4U0zdpkVJpEFArl7au9ELLT7DFks4Y98p6db+gI+hTf3cpppUKF0Xk14vrTr
 TmnlOS8b5JCNtHel3rbPdIbezECUgN4DI6Iwx3sWkYWeBTeHNDtqmSXrS7qZ1RCFPuCm
 QFgVJMMd23qFbj4/+Hfmj7im9/IsHBCVlQG1Xx0+aUnXd17tRMC3N+D1EUrxFo/zkGUB
 yJEahmoIdddgTmp8lDkAOeo0LgWz9vkpB92ZBeNthxEyxkTdxpvB1zo5MqPMFxHC3mCQ
 FoOQrzN6NDMuE5AtTD1Oy48ijA0KwQ8ozLRBJhmctZD9VcsKaieqxFWUn0qX8aEqSr2e
 Z0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FHsi0WhZPkpcteRkD1wHNiWe8/Hz2gn0/AW6jsWq7Yk=;
 b=Afk3RTJ7p3dSdXgn+gKDGtVI562Xx8dHUJE/iZB+LWSvHQ9j70+kt6uF+KWeN7pmNH
 ZqCu/PL5Ylo5QVyUbq6qH+8NP65Wmunmlm40Dv3pxCRee1LJgGZYTs1QACnDxzyPbekI
 BX8ZfuthamtIvf3V1JZDPAHGE5o7mcbKx+SvO/i4IKwL3wms+w6HuoKRqVN6YieWYuUl
 20Yw4K7qb4apc822gVjNzS2r59BzJJlSayuiu7FTWbsmUUTgOH8R69P6okbJeyhQBEGn
 uNzncbf7QboELnOU4CCWVL44xqDpgMFRWu7iRATFlIn127Zw4oClT48Oi4Rw7L0afEPL
 Be8A==
X-Gm-Message-State: APjAAAU/fKG+I3GdbaYa7Z4vaKFLxwG7MMkcbt1SphKb4RhGoRhf0M/A
 KkdN+g7hcRmDWERnPQItKII=
X-Google-Smtp-Source: APXvYqwYMxy4XZROpaD0FscYz0AqMuA01QudPfwbFNyDIA/mg/wBCaW//WO9OpD7wyc2tBVYrsccSA==
X-Received: by 2002:a17:90a:20c6:: with SMTP id
 f64mr3606314pjg.57.1561373354898; 
 Mon, 24 Jun 2019 03:49:14 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id l44sm17686592pje.29.2019.06.24.03.49.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 03:49:14 -0700 (PDT)
Date: Mon, 24 Jun 2019 19:49:11 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH nvme-cli 01/13] Remove superfluous casts
Message-ID: <20190624104911.GA5783@minwooim-desktop>
References: <20190619173701.8263-1-bvanassche@acm.org>
 <20190619173701.8263-2-bvanassche@acm.org>
 <87tvcfnw05.fsf@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvcfnw05.fsf@solarflare.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_034916_190990_AAD1BC7A 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I have the same issue on my VM whose version of glibc is lower asMikhail
said. Is this really superfluous now? :)

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
