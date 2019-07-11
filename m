Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7380F656F5
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 14:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxMA1JRAMEnKGJ2k9qx1+IY6IP/iSWiQOkKsD6DwngE=; b=iAvAJTjMfNO4Cr
	gG6FfiTcc8WS8d4BANRprbcGBo3532ja78s0H8zqN6rQwEu8//YimE0LExbaJvVRnSd8ct4NaF+88
	rOvc6DmaTRRInPf9rvXIuNjvLsVG2Aux3lQcEQl/7SQzoNQWHOVwh1y1hZWPZazyfYrKjikqArwt3
	QfDc/EFnuY6RPvEgV2PuMb167AEyZYycRg9ML/a4bLeNZnRXj1JYjCeuBFF7wgwmKhSRggcVO/UxV
	/omjvk1rqQ2PUKMwJQTjo3gjiXFbwdkH8YDaQtW6ugl+w3UAt/dbVDMTSqCtUuoe4S3T8fVOlvABD
	p3BYA3K0G5vijQtimgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYG8-0000GO-I4; Thu, 11 Jul 2019 12:33:12 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYG3-0000G4-N7
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 12:33:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so2863546pgp.12
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 05:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pdQ6s7bTa4acZfAtdDxrpSGZ1zmrMVQ0jwUYUTnrXvQ=;
 b=mpEUAosLcUvsTKs6dnmAQIEbPntfSUcPiJ9WUNq1wd8S1cNWIiEdxqXHOYI4RNhc0d
 C1JQxY31MJbz2NVS6lszG4BbXv4NvVhVHzKIrTEu3lhYwxhVbJ0AQ8kqjcxeyO5RZ1Rf
 U46rJ+mx+ECRSOlTPvF2JzYClJGjZxVnkKaOqy8Upm4Kxs8VGU/q+i5hvicjMby8VmNn
 9oGqC19vpRAWd4ZGlHdi05pvxk43izQ83ShVdkmOFvHsK7yVdut0OWbnOl+Nzu8MzQVm
 ViuipFxhQdjvfTSLvZVfWXyQTDNggLITYO//xuel7oeWxGqtD3uQIXTYCX4Sr0xPyEo4
 2BrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pdQ6s7bTa4acZfAtdDxrpSGZ1zmrMVQ0jwUYUTnrXvQ=;
 b=aiwUo4soByAkG93PCTCOhktzeW7JTwqwbE0V4WdRxytCHiMwdw7U9EJuTMhoKeZTCL
 llK7htftDo3kUIc4VoBbDNdLZtutxnNeKgDCtJt+RnVF0VvRhmnYej2TxNpWYAj0iJbb
 C0bq0LbgS8CfO764wKhv6WinA/F8ZFhh8RW/4ZrdwWrcE//T+KivT+kq8oS2ub/KFAiu
 4U/zszD0ANS+a0rhsJpJ8oPfckZHbqUAfWQDexlrrsQ0+w5uCxSbZAnA4aF1Kx/hZDrX
 0XmtAZUWYUiGWABilbVt2p1GKf7uVYa/tWOF07/Rx8lVvBj8AGV/91fvlXRMbzI0NIOE
 uH1w==
X-Gm-Message-State: APjAAAW8JAlvV9AyJqXOjEG/ckecF5xI2bBunGKZXws/9d6lkk7jouBO
 +8ikid/rZulBYNHQrS2uu+g=
X-Google-Smtp-Source: APXvYqy3RWlxVO07YCQQ4uF3RzYe4KS+BS5HyHCm1Kp4jFMk1GS9kJokbskXq+5uWaq2stRrZOF/Pw==
X-Received: by 2002:a63:d755:: with SMTP id w21mr4217386pgi.311.1562848386510; 
 Thu, 11 Jul 2019 05:33:06 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c8sm11629146pjq.2.2019.07.11.05.33.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 05:33:05 -0700 (PDT)
Date: Thu, 11 Jul 2019 21:33:03 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH rfc 2/6] nvme-cli: support persistent connections to a
 discovery controller
Message-ID: <20190711123303.GB8398@minwoo-desktop>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-3-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710232740.26734-3-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_053307_756391_D08A7FA3 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-10 16:27:36, James Smart wrote:
> From: Sagi Grimberg <sagi@grimberg.me>
> 
> Simply don't destroy the discovery controller after getting the
> log pages. Note that persistent connection to a discovery subsystem
> require to pass in a non-zero kato value, so if not provided we
> simply use a default of 30 seconds kato.
> 
> Example:
>   nvme connect-all ... --persistent
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

This is what I really wanted to make it support!

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
