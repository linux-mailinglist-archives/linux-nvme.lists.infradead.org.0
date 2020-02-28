Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160DA17412B
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 21:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=t35C5XuPdPAluHfochyyIgKQC
	ot9sL7PFxCHvxfSwfwLBkkahla+0V7IswZ7EWUYnlywiXyL7a79nXuOePRSTuMA2ukLEU5UnffotA
	wh5lB4cpEbWaL0mH4y8cZOlRzsSuPTzI63y3zQI6SAPqE0EXEPCoqb9xJr6+OgsXh+niPnHjNH3UL
	1DmMNTGtrsYUIFc1SWsDfsUtyUE/Ffn6/v/Owd54tdPyzSH4utlnASNR4tnX8/nLa62Kl2N8lAKNv
	sH6GFJCnxabJjKkS3irEDcRubxTSwqjVpkOiO2qqlvOQlOVrQ4mrYtmXbRLqHH2c9JY064eT1WLWA
	lAbBTS4bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mQg-0004SI-JN; Fri, 28 Feb 2020 20:40:14 +0000
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mQY-0003m6-DH
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 20:40:07 +0000
Received: by mail-pf1-f181.google.com with SMTP id j9so2292996pfa.8
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 12:40:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=a3J6U59icbrFz8IWlvzMcP+a5jCX2H0x4n0CQRunQ5z15EBHX6ArvVd9ue2s5fiZ3Y
 KkJqa+lH4vlx+pm2F+rNkfkDxRxf9Kn1DlJZtNkVrvO0MLeBpKAxSKWAWwjYhzP9uhjU
 c+hpQutsMOO/D1BZBEr59lcqZSa6Z3D8j6jtGYTs2UFpbxiQxhkZD2E8j+sfGmBN0oGl
 r/R0jHUiEkw2VFr/cpQ6GUUxTppzzk1+thn5LfxYqeGu2AozeuqoKryDcGhrBV4nMs0Q
 u/iAVVWSabNfq56UJxmCkk8T7w3WPGcKofreXt/MS1PNTSzp6Q82IJvLutR90LFNmbyE
 xMhw==
X-Gm-Message-State: ANhLgQ2cVFShueGmbQePYTvF78mFLenU5hN9iGhDZF9nai0TD0JEZTkA
 ShBdNVqrUczsP9cETSLGjLM=
X-Google-Smtp-Source: ADFU+vuPGERzbp0jOHJKDJc/fFUXJZcJvyYTmMxabkHkW/iZp+dnpaWkY4rKbkCHP/R6xMcXmnmjDw==
X-Received: by 2002:a62:c585:: with SMTP id j127mr3023250pfg.112.1582922405550; 
 Fri, 28 Feb 2020 12:40:05 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id 196sm12166792pfy.86.2020.02.28.12.40.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 12:40:04 -0800 (PST)
Subject: Re: [PATCH 04/29] nvme-fc nvmet_fc nvme_fcloop: adapt code to changed
 names in api header
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-5-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bbd83ff2-2ea3-3095-84e9-77ef107c8da4@grimberg.me>
Date: Fri, 28 Feb 2020 12:40:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_124006_457628_4721E3EF 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
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
