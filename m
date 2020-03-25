Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB16E1933AF
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 23:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpGA101PLdLtCrySTDfQs/4nwSMcYCyXFhbk42NGlMU=; b=O83S/4JCpjzkIN
	WGXuoSp/pMoXHWB1AjLJv+YBaYqprPNBztz86rwE9tYuRd7g/QlQZjnti+suhRGbCHdBWjWF9qLU1
	bRTslntSrUwoPgCvIr+6QfUAInWMxdh2L0BnvRapFsa0PSLUyVvwtbvzEMckN7s/q87bsrWvdH9Fm
	WKtKvfDCVgPAdHxHQFVMh9MvSAbjLzcDzNaO9tHz0fw2nnudmCHb/F6gZhFDvgt9iritI0nEdWPRK
	k0EOkLQjIPgPHDFF1zItIOUecyKtbObWAy9ShbUk8kEDA5TRLHvbIpuraJf1Ib1sv5sJ51dL/QOEj
	PmzF7QY/cgMWahWP58Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHEPd-00019F-D4; Wed, 25 Mar 2020 22:22:13 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHEPZ-00018t-KV
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 22:22:10 +0000
Received: by mail-pf1-x430.google.com with SMTP id u68so1771933pfb.2
 for <linux-nvme@lists.infradead.org>; Wed, 25 Mar 2020 15:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Do08hG9AUSv48rwyZNii7beHgtP+boxdwwErv9EEohE=;
 b=bG4AWVX0gdZpQ3nEHLWoqnA4nxqh1Brp+sCRK3RgzChPMs7O6vvnBojGcVAPaYvkuK
 XusTzi041AxvhzSeUq9GmC0bmsdOVpPOB7tOagIFGAZoZ5h3HWXdbb9mDOLK1zTvMzSs
 IFDmQnpSFSIxoddiPmD2E0Ng7j8+2rF9DBtacOduKTAOvqnTETdHPeO2FSRp4ZWPaQPV
 LHQ64wkqcOYzbBKhWwbqIdtJqeyaRQlrF/FLo2yCKfJCjx0HJ+yp2KSBhLdjTT6mhwP/
 lMwZIDOczkIe6gJqNEzgxkOPP9cbPIM6oo0AI8kWN418fRob52OlPloVHwxOY+R6rb+5
 f9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Do08hG9AUSv48rwyZNii7beHgtP+boxdwwErv9EEohE=;
 b=augjFHoLY0c3JrW+s0P30JlbLC50ZMJpotKs+scu1HEBv9faOhDt6ZhTwKrMI02syF
 qnvB59bPmZOC7Qi1GNwnHOd+nASWG+z5Y+xSYCOh2QtMTULnUGy7J1xFHAGhuUxHpFiJ
 hj43mdCyIUZ8y92cZu0qzZUykE+h9c7NHUeRHVZh2+/DAbNidhd88lXsSANExxT4dIp7
 WCktFmdbQs5NzvzFpeLgD8S5MD9NhsHiul2MCDowq3yIOfok+FFYG6nwXK0/sXfl8vpy
 zJX+NZe4EGwmJRJvvPr/MH6mRpjXUw83m8bNgrobyoTP97oxu2W5oYcZTWkrhHChhDpF
 o9FA==
X-Gm-Message-State: ANhLgQ3I+JbBR/BhB0IOzaBc8fY8bjbEXVHkaBq0E1olRM9RrC8Q4hZ+
 NVjwNU7BVmRUpdy7lIHThyzZjg==
X-Google-Smtp-Source: ADFU+vtYCPKhuxveHCRM3wjZGZ2FYSIE4FUyF8TsreyNALXgggyAyOSjIkwh0GyhxwH6n7ImEuiYwg==
X-Received: by 2002:a65:558a:: with SMTP id j10mr5096515pgs.13.1585174928176; 
 Wed, 25 Mar 2020 15:22:08 -0700 (PDT)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id i6sm133599pfe.62.2020.03.25.15.22.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Mar 2020 15:22:07 -0700 (PDT)
Subject: Re: [GIT PULL] nvme 5.7
To: Keith Busch <kbusch@kernel.org>
References: <20200325221504.GC4960@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e3a31b3c-37cc-1638-79ef-e21ea3dbbfa2@kernel.dk>
Date: Wed, 25 Mar 2020 16:22:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325221504.GC4960@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_152209_734095_14112853 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/25/20 4:15 PM, Keith Busch wrote:
> Hi Jens
> 
> This is our first nvme 5.7 pull request, a collection of miscellaneous
> fixes, cleanups, and minor improvements. Please pull.

Thanks, pulled.

> And just a heads up, I will be out for the majority of the this
> development cycle, so Christoph agreed to handle nvme patches for the
> rest of the 5.7 release.

Ok no worries!

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
