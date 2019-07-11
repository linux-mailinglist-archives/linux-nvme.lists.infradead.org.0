Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95544656D8
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 14:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ft+PR1rJoOZAjazqrNR4SfJptoloZtR10GX02yxJz2g=; b=rBeKzwRz5ipVbf
	7yUzoHYGKothdxnLBNGmikkCN4fqhswkXSaf+SAikW7ZPyI6Ehq3ZaOHJIZjKeOMC7kB1jckCc3x8
	UPwIHZsSzHcLXTjn1n24KH10KbLZNS9GASpGm4pbbKDL2mvrF4e8rwGh8AWKiX/7Szoa/8kLTFYLS
	GuSIDLzJGTLnZ0L9SqOt5BsDUnsqI6IHA+v0ud48XJra/Tr5K6lP08yrF1oQexLoAZ/BEeHoIbwrY
	0ZNIjJK1xf59EiR8axV9N0t+pLfSIRzAMS5ZVi4+m3b2FFuhHXrBx1uCPVIneKnADiKy2bmAIQwqg
	dPNsk18J9nv4O4Cb/6iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYBN-0006Ja-46; Thu, 11 Jul 2019 12:28:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYBG-0006JI-D4
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 12:28:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so2886076pgl.2
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 05:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rAAPm8g28fheGYabYreb5NfjxjA22kLl4avP6jGPGVo=;
 b=FEr7dA0xXl6BawdKlyFS9DfKlgsub1LPfN8trrX5aUFNP82UjEg85gdjChBwRtEh9q
 po377e4MKTbjlHUATeHvJP3OFn6yLEdbxdTyfM6FBo6ViaP/FB8gBA7D02XtJM66Cca/
 6xyfLerwSZr6P02RBEOyz7O2i9IhdUme0j0uioVtXqNu7YRpEq7Y5rOfHSC/4QMgkvuA
 y4qEXVqV6jIQUm6KJ7EhajK+GWIyd7CYadvm/Dwle6pq7dRF8Iov/ujs3+yp5L0OIhKV
 vVV7EDLPE8z38GmQzN8K8ITSjUyvtVhSe7dLdpRq+ZNRLdeAlO45uPs9GsCQpXMUjQPK
 dAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rAAPm8g28fheGYabYreb5NfjxjA22kLl4avP6jGPGVo=;
 b=B4SuzzhQ5JRjfQa0Y5Qyt+aMoCIYNcOtbS+lnEBRljW0jzJ2msN2sb7tPz/nFR+Uat
 cmm/iBM5TFnKsFf1uxjeWOweXcSs2vf/761syQkSxiyB5qeZMW/TS7iQkCu6bCXxGwc/
 d07BwZihjo4xYRQxUIwnnQJPY51iWPO5UnpMD75iJ0TE5byLU6f5eLUMGnpXg2j88r+A
 ppmFbg2UqaETplBAi7lojQ2j/jskUVAB1i39V4JzcfIEBIf+cX/Omn9k3RDDUT9Fqw5h
 uo5ajK9nfsflTwe4za2TQttDCDyJJ1TlHxqlQbqKxzNjfV6gxoYMqLm1rWFFd53dTTsJ
 goPA==
X-Gm-Message-State: APjAAAVlsjR8fNvsWe1Ykb/NGJsE5K8PqVkE0s4s47VVGfre1uVzofZA
 9K039kYfOxWbIXn9F3SvRpg=
X-Google-Smtp-Source: APXvYqzAwDeDD7ZFmLfFkhMt7Yed5Xp4haYDz8LrWMTATIjF8NrJcL441qN4Q1ecSwaJQe/MQqFuXA==
X-Received: by 2002:a17:90a:8c90:: with SMTP id
 b16mr4518827pjo.133.1562848089222; 
 Thu, 11 Jul 2019 05:28:09 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id n140sm5572708pfd.132.2019.07.11.05.28.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 05:28:08 -0700 (PDT)
Date: Thu, 11 Jul 2019 21:28:06 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH rfc 1/6] nvme-cli: ignore arguments that pass in "none"
Message-ID: <20190711122806.GA8398@minwoo-desktop>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-2-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710232740.26734-2-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_052810_463389_0B2E6814 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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


Loos good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
