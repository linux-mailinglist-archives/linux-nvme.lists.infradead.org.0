Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC38457B85
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1dc1QSwKlB/YciYcRLsCz4Jv0/TgMc1zK1PdTuonzEc=; b=C37wIm8m/GZi+5c0+QHqOHAqr
	hP35UfM7osmTaNW/7JEvZKyQl3I0lXnhVKhG3h4NyD28b8EK27tvI/48ZDmujPR/P6VJikSoUTgPe
	5SmmUH0VVtTlTSt/nPAf7rQENeQFOM8rd+uJklNEKDcLaegS77MJGLB9zFBf6/eao2Aj12ukXfvGR
	qMDbXIxJAhSTKn1mhnbeWNfTINJ/o70dzDZK4nOC/w02EFOksA9QdB+HtLFl68HvqgAXKRTUEHQEE
	3QNpK0yUg5QdrjdzhMaorxActM8lztpngL1p8m7Ha4PHU+ggA+92wFc1pC7OUUGMwSb+hqzyq7msh
	EUpy76ZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN38-0005Ok-A4; Thu, 27 Jun 2019 05:34:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsa-0006ep-IA
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yP2HkhrW6PVwBG8A27tk+ZvLZeXnAMEZZkY+ZpHp+Ks=; b=G4qOy50/wgI9PoL+JpM8ICv/UH
 8hZcVooqqs4lF1G8hBb5Sta/hDxZyevQtbokCUdZZmy7SknUluNnN8d9beXmmgY8u+tcIHH1IUjQs
 Gzp13j3kLk1WCLucuEDGGWmYQ/mtwyV7lpE31q9a/nOPWXREu5r2JYMLNkZVI2W4S4tLtVnl4iM/n
 Bovc0vYflfX7FQYQRSPb73FypT5Z60UvgYC80gWuVM1f/vXA9w6VWnroBrt51ywf6c8SF5JlSzI3U
 h9I4ruqFIF3NMPG8FA8oCZbaTQaO/+xH0ahAn90Of6uySxFMP++xKlqFPJPn1N6hsioF3xA2RVOAu
 m9tTKawQ==;
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGwL-0007ye-MH
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 23:02:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so135509plr.11
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 16:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yP2HkhrW6PVwBG8A27tk+ZvLZeXnAMEZZkY+ZpHp+Ks=;
 b=iB3B4g/vFp+RGpXcHQoPwY3ovH+8sBDn+/G+w663ssJ5awA+9Hh2u21vNvzQQk8mcV
 1bG6Wj6mPzrcqpHu6m+W0QCxi9xqRD0eDGCxjzx6o3A43JoBlauARWICsDOLbDF+8uDz
 eDW1CtJdtwePZaCVpPx1i5C4Q3yaVH49C5QppHbacosVt5+q/c45cbIbpLxMmziH+137
 6Tl/zn2w4SlkZW6fXXFwi9tPOeTLRBXtMslhRtUQMyGBGM5pm4/H2Pdmq28584lssyFl
 hieH/X4hR8SZ+zeN6UtIO1JEiU0e0wKccXQzZtfJ21om94CUnhBLgjN1EIZ/+gco/pTw
 A19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yP2HkhrW6PVwBG8A27tk+ZvLZeXnAMEZZkY+ZpHp+Ks=;
 b=pl2UHzklFNX7uXe0SV118PZFXb9WmdizZnJmK/ZmX2WdN9vkuXa8alsf4kRQZcophq
 uPjHhgq921mSmlscnRHzzIbz/baKpOYXB2b8r7+tICJc+74EliAj/qQl4aFFvCh74eC1
 o+SaeViybibcbaoud97bF1ihCzEXC34qR6W9/kZYH/WbE0B3oyZ+GG85mCmHfOzOYOmt
 ukXJqYF4lLkIJjPG0eM3pRrdtp1UAiGmpZC0d3wq/q+ZTyzJxi9wnouqx9Q9KeUEQL7h
 abyVK7Pg/kJkv73J4RWK6n2qI7Wl6fleDB+qXSzo0+MFORPp5jQudGt8r6lGY3bqxdtn
 75Cg==
X-Gm-Message-State: APjAAAVIC/+B9ZYtmc/9XvbF6j6wou4woCGild8P2FJ67bsG7dGajqQp
 P69H2AUmva8ZNYqQq2z3a8lYv2BM
X-Google-Smtp-Source: APXvYqwL9dBjVKoHWHgFL9vpPWsWHAJMO6thpwBcAtWpzLaRL2F93cUyuiefpuM2ggkWOHLjddCZ5w==
X-Received: by 2002:a17:902:724:: with SMTP id 33mr621192pli.49.1561590053059; 
 Wed, 26 Jun 2019 16:00:53 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d14sm292871pfo.154.2019.06.26.16.00.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 16:00:52 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: fix module unloads while lports still pending
To: Arun Easi <aeasi@marvell.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
Date: Wed, 26 Jun 2019 16:00:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000257_786366_BFFFC866 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/26/2019 3:20 PM, Arun Easi wrote:
> Changes look ok.
> 
> Did you hit this during testing? Wondering because LLD would have unloaded
> prior to nvme_fc, so no lport/rport should remain if LLD behaves well.
> 
> -Arun
> 

It's been a longstanding annoyance - usually tied with test cases that 
used modprobe -r.   Issue is the drivers would call the targetport 
unregister calls, which would release the targetport once all the 
outstanding ios were cancelled to the lldd and the link-side association 
terminated, but the controllers are in a reconnecting and not yet torn 
down. From the drivers point of view, they are unlinked. Thus it was 
intended the driver could unregister/unload/reload/reregister and if 
possible reconnect - allowing the nvme device to never be deleted. Given 
the lack of module reference, when the driver module left, so did the 
transport module, even with the live data structures.

-- james

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
