Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074002286A
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91NgmQM2odNLBJTMJA+C+wBEyx7HQJvGcXGTAaMPVlM=; b=PMRQhcYtFd4b1i
	Y+vOBDkpixZ0H23jb6qr4o2HwO9mzdmR3lSuYQiCWHGzFw7b+BomoEtcq8Ius1q5EciOvWGRvouon
	wfeE2h8wm7mQS2G+VC/G0Ysoul234gTlmH/aNM7CFsqUymUwrsFja6Czq7tlstMqQS2u8Q6bYSFu4
	pn2UlWO4CPtAbEn0N46owxHazjwh9caB4o9580kDpxB3kjf8wsSCxZimruv78bFR230wu/Jd1Hy+P
	RQwOOGrQGTGWJr+nGlC3qeor/xv3T8Es7WQH+LraBadNZFWPCPmS2iwtOU3rRjkZoeBowbTCC1Zrs
	egocWXCn9ziVWw7UABqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQp3-0005PB-Hj; Sun, 19 May 2019 18:46:13 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQou-0005Oi-AA
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:46:09 +0000
Received: by mail-pf1-x433.google.com with SMTP id s11so6086979pfm.12
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 11:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=duD4VWJEO46DegZRJNZh8d9VLQ2APBwZp6G8JGOMnVQ=;
 b=M2tBBWmdjyr79jbY1C0fE8ydkYfaXGwMipUk4DZt4vChngFhXtlVurDgpwzdUeIdRm
 ULEkQL/Ytub6I0ax7tGSuoB1IVHCwrNdt21tX3tyYKT2+IhyXHELkq4TTaTqHk7l7BPV
 Sfg48cBdn/05ykXU44yE7Eeb/UhtfvDv1hRZbwnENjmoAPru8QglL0pKim7Y9wq/GymV
 UEH8QkLdJCl1JipA+e+pis/FUPhn+d1gQv+GcB55LWrSIGYt/IXqQRS+Ox3jPr5Yt+ss
 oFtzGCf7v1vObEc5U/ePeb8EI1+X3hCqw7sS5hZQDKiTiHc3DG6F+gd+vnOqdCDbgLz8
 wF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=duD4VWJEO46DegZRJNZh8d9VLQ2APBwZp6G8JGOMnVQ=;
 b=IGul1eEnio//NHEMHHCtGDXz3R+txIfpecu9U6DRJCR5W1lW09pjx1q4ZGjSMt8Wab
 7ZJHUEYfH6P1tOiSM1o7DYRrWv//yD3D3wZypiyKDYIM9bdjmOKU2jUHF1ZVjmna2bGg
 0YCNDE7rM/1OW0Y0a41JCkcqdS8IZKF1syJG0J3LM6IwIZ4FMuVHDD2Uc3JQUQBuo4JF
 NnrwNT0K72fAt6VUdI3btEga/HSZfouMMWvkvEh2VPRyf+gn+FdN32xPoIpIAmc6iCaH
 r1O3a8cOQstW76bdEkP9l/qPpclfwclXYDqZpVN8Aoc8JnYtaNkzV39H2g+bSN3L281J
 KT5w==
X-Gm-Message-State: APjAAAW9rvbu/IwxOLWMZWEWwRDn55MyHzGna07BnRTUd+M15a+xtzf1
 wuGE0ucpg03fd9UTRNwE7+Yf++NobyY=
X-Google-Smtp-Source: APXvYqz5g/LrUwA8YVLI9VdFnk5aL1OXmRFJ+M9lWK8CrE240ndnYaykS91iGEC3N9bSnQeroCXk1A==
X-Received: by 2002:a62:582:: with SMTP id 124mr76096317pff.209.1558291563230; 
 Sun, 19 May 2019 11:46:03 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r1sm19204040pfg.65.2019.05.19.11.46.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 May 2019 11:46:02 -0700 (PDT)
Date: Mon, 20 May 2019 03:45:55 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-cli: close fd before return
Message-ID: <20190519184553.GC10876@minwooim-desktop>
References: <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_114607_774078_50FDA60D 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This kind of patches are already in Github PR:
  https://github.com/linux-nvme/nvme-cli/pull/490

> @@ -1216,7 +1216,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>  				fprintf(stderr, "identify failed\n");
>  				show_nvme_status(err);
>  			}
> -			return err;
> +			goto close_fd;
>  		}
>  		for (i = 0; i < 16; ++i) {
>  			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0) {
> @@ -1245,6 +1245,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>  	else
>  		perror("create namespace");
>  
> + close_fd:
>  	close(fd);
>  
>  	return err;

If this patch wants to free the leaked file descriptor in case of
errors, it needs to cover more parts than it shows above.
You can see the patch for the create_ns() from:
  https://github.com/linux-nvme/nvme-cli/pull/490/commits/b0c8a309266c2daf6ebadf9ab14884c6954765a1

> @@ -3198,7 +3199,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>  				fprintf(stderr, "identify failed\n");
>  				show_nvme_status(err);
>  			}
> -			return err;
> +			goto close_fd;
>  		}
>  		prev_lbaf = ns.flbas & 0xf;

It also needs to be coverted with more parts to close the leaked file
descriptor.
You can see the patch for the format() from:
  https://github.com/linux-nvme/nvme-cli/pull/490/commits/e3c487c6d9c145ba0b90d4ef227510b4faa33e98

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
