Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8EB174141
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 22:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=N3YwVCrdI5zKOs89TO01QB2I1
	UGVmu/QxrHqhTZM4Avjv9QqZQlUBlV7uwTtdE3iZzW51h+D6nQoeFgFBmBYTq5y1BezL6TeGG9RO+
	MhZykQn0gmLbTFt1VxqNOrfrOVc0rpb+IjqNe0iX5EFFzfgcBm02wDT/ZXrxBfuHvb39Oh2c0Zf3d
	wy+x2yDDlPq7kxBBcdDQxXxhe7fbIUJsggQtcb+7zu4V2nLKZY+H+QkHH3F/Btu8Mn/4uaPcH35VY
	801OKnb+GwDDaiG+cBcnlcjLSNEmY0Jh8J7XXg+p6lmeou429H9gEPhJzzRq4PZDmmlC+UsCOM8xS
	aABtxNT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mo2-0004BP-UM; Fri, 28 Feb 2020 21:04:22 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mnx-0004B7-Pu
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 21:04:18 +0000
Received: by mail-pl1-f193.google.com with SMTP id j7so1718195plt.1
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 13:04:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=SGOgnQ/eva3Kg7SQ7ptrEC4VcfyqwlW8gfyJlcb0nrjIm1ELRlBvX+v61VW54vmwXE
 ahk3Gc2pZBlG0AfuozDT7uK7CSODm65S8GLOQ+WfR164d5YKYB7zT14hr21nefjGyf6Z
 VahqyFmDiU4Mu4Vd/s53qnDnl/vzUkr6zdhOWcIR2Aa6wpiVI592L1h08VRYlAM6uTVr
 oFtBkyTdFuLCfUoQCywIjU4QC4KJkhvZrl3dF+HdsRHNzgKSzHHmZCjR+vGSFuEtDPEM
 WiIpA0DDeQcukwnIpi74q0p/xjjIlwmcAaIlb1Ae9cJwWK4jnht+ueBWES+Pmkk9LsFK
 oLJA==
X-Gm-Message-State: APjAAAVgxLorobyokyd1fHiddl9MBLzJa/F9sIeETBeMZkavVWB0fwQG
 SCN3L7xic1nQpbyB26toOJA=
X-Google-Smtp-Source: APXvYqz1Byzg9gYyYDK74mXc4xfHK1K/aGPdBi5tDY/hGoPZGGfuIA6jnWPGhTHQHcYeZrWwKWxQ+A==
X-Received: by 2002:a17:90b:4004:: with SMTP id
 ie4mr6643695pjb.49.1582923856770; 
 Fri, 28 Feb 2020 13:04:16 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id e1sm12191994pff.188.2020.02.28.13.04.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 13:04:15 -0800 (PST)
Subject: Re: [PATCH 08/29] nvmet-fc: Better size LS buffers
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-9-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <25218d5c-fb0d-69ab-01d5-01726a17375e@grimberg.me>
Date: Fri, 28 Feb 2020 13:04:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-9-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_130417_838903_5270A3B9 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
