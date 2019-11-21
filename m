Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876791058D7
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 18:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDpmTyQSk1zpvyhmwx8mwzXFGEsek9d4qmCJtLC/Bu0=; b=eRrgdAlGwfIMGt
	3k48qZ29eMqIgUGBCV4diNX/fHUJv4svFKOxypbBJmsYI9u4cBkEdWsknW3Gd3IOt2lPH0ekd88OA
	9WiMXcI8zx7NuUaf/GZkEutdr6Fp3HLBu/iMjdztn0GsIwGS1tLss7UtHDn2O6waQFtnQH2bxTF+R
	tjRHghA/pmfw5aHEBiKIb5UnBA1378YY+gy11kUz6aw2ZytKnylgobO0V0NTyirr7/1XX7ojqqg2I
	/7Qz+UEpP6/wH4GagCmDWut1WYpmPe48fYqJYnCtNeNjmVqSP/AG8MLDy5ioSn4GOsY4ruoglRzPr
	+L4wIncMaBXzR3elh38w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqeD-0006Gj-KE; Thu, 21 Nov 2019 17:53:41 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqe8-0006GP-Ja
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 17:53:38 +0000
Received: by mail-il1-x129.google.com with SMTP id i6so4115184ilr.11
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 09:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9hWSFCe5GZ8xJGe1oSe24GMrj3ikt8l3K8DgbENrpFI=;
 b=fDRKD6C22e3odSrKHtt14dDSS0QTgy6XUP2jabdA7NY8djRvuKQBUMMrBqwbwXDfkF
 a87P5qjY5AjxNWD+LUueqoATradBjI0BsrprfQ5qIU6uKr+9vY86TQ2sUDMRKio46TJF
 pTXfD/iudZZgIoIAwKs95k3C9xuNPsOY391hwKW7kAx+ayjrkvqn5Q8UxjeLn7NwiyGE
 hLC5Bt5KgFWYKgXdnSfwt+TMZSG/5RqiGgJgO+l6P4KxrQN2RoeHZQlOcfeu4eMYoSqs
 tADjMVD/KjhPcB0t1IlGIUTts0DCvjBmI1m7ajodrJgvwZDR9y6qEkcp7Imyed0jvgqo
 KP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9hWSFCe5GZ8xJGe1oSe24GMrj3ikt8l3K8DgbENrpFI=;
 b=Jn9zimT/BL4IPCBwtA5ODE0wAkeqqoAhuZcLb9AO/deqoyFoAxMQD0p//wvb1+Qqpr
 DLUc15LrMpe4cLRUFE7gy3VWd2cOPo1sw+Eb1bh6NGwwZggNAHE3jI/tXVynSiGGUEjM
 OtQlMDvckGFEUnibO3socUYuloIFEuV5ETuvU+GUCG20j/WmQPxYSWmdEJ9k+PU4ZC17
 oUP2X6VzBnlmBRnYFCivnMjtUSCwOjYDzVHiiW+kJBmNupZH6j97yMkZUyfX2Hfhhvhh
 IThf36MurKBvpCDCSbjcreoUhID+0Ij0SkaXJvIe8IU9yBlOjEUZ3jbdOHVPDRxdnVee
 pYZA==
X-Gm-Message-State: APjAAAV2xqaZtRfkky09tcesfI1soMj1qhNety3WAxVtX+cvoQGnpmt4
 03H0htK+u1LXdvBGqKfOglGeUA==
X-Google-Smtp-Source: APXvYqxXTIdxvsxyNU11rz5ZbBhXb16MWL3WDpDhHsOdzLykLFKA1vVftfAgGkjY42a0QvvQFy5H+g==
X-Received: by 2002:a92:aa48:: with SMTP id j69mr11855140ili.162.1574358814795; 
 Thu, 21 Nov 2019 09:53:34 -0800 (PST)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id b21sm1518322ilg.88.2019.11.21.09.53.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 21 Nov 2019 09:53:33 -0800 (PST)
Subject: Re: [GIT PULL] nvme-5.5, second pull
To: Keith Busch <kbusch@kernel.org>
References: <20191121173635.GB19165@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <077bab09-23a5-35f8-4ba6-b9beea85182d@kernel.dk>
Date: Thu, 21 Nov 2019 10:53:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121173635.GB19165@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_095336_643909_639F8F00 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: chaitanya.kulkarni@wdc.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11/21/19 10:36 AM, Keith Busch wrote:
> Hi Jens,
> 
> We've accumulated a few new patches since our initial 5.5 pull request
> ready for the next merge window:
> 
>   - The only new feature is the optional hwmon support for nvme (Guenter
>     and Akinobu)
> 
>   - A universal work-around for controllers reading discard payloads
>     beyond the range boundary (Eduard)
> 
>   - Chaitanya graciously agreed to share the target driver maintance

Thanks, I'll queue this up, already shipped out the earlier stuff, but
I've got quite a backlog for the merge window anyway.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
