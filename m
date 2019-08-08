Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A97886DE4
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BGmhJZhhiMy7k1+Ta98/pp7lYpK6YcZyLjuB7Usz0wI=; b=nrluI17UN+eKmvzTGGub+6vZx
	MXik8T8cyTNSmTtsfeoa6O6aRa+FzNK00qVKCpjzUtHNH93fewNVrpo/NfLbtyq8xwaNvM4v+NisU
	4Bc/kVXXx6c9/pBmSUbFSU7oHzunAGu8MIS8O9GTWz/lp/PSCYYAuglHOutCwde2JV+24MWb8hOKJ
	x4//qhnTZGEt4d7PUNVjDGsPl8mvTJrSJB1SR1TtXTsHqoFFkF70nuq+WC1tj/YyOXuqA0r/fjDMU
	pozYgDKT6Ac/gJMUe+rnQwQPYTgmF5wCd5aHHEZXXF/5Dsc6gsh+a8NraEJh1I2q6PJ65o6RIgSFl
	Tjq7qGJPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvroK-00029g-0U; Thu, 08 Aug 2019 23:27:08 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrnU-0001Q2-RS
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:26:18 +0000
Received: by mail-pl1-f193.google.com with SMTP id 4so37173317pld.10
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h/QW1tjQyis/dQeBrAedureb5Kcw4iYiOFhPyWoqkHA=;
 b=NFtcj2p/4jjqXongkUTwPjgJMgjW+NOt85lT0f1akI+O0+GDIfEn3PE2/qE+Zr0g9l
 zNxrGYRvspW0XyeWaqbT30ul5KUfj5zn6nILXil3XKNe8cH9VMgFlJggankfORXMOilH
 GAH2CoQLR/6uRGSFLMFfg94gMEfW38RWWvFZvQwdWCA7bz4xxsBaG06nWjkrPuwbOAB8
 /HFyhnvMrRFEB8Dl3JftMox0BMxJm6jOzzsKs9MkE/ZZ8FkFXaLj2U2x3buw1kLWUfpO
 tf13xEfmzPGLzTpVV/lqkOOjqQNL1Bkq1fWL3P1tONHpm8Q+8Z118CyYQVjcMyfKX/ZN
 qCfg==
X-Gm-Message-State: APjAAAVX1zjcsXCqHk52eMMtA9NmqQRBnbGxR9JHn3fUrjTntPpkn/4s
 ZV696U99hfq1WmtOuYXxTME=
X-Google-Smtp-Source: APXvYqyiQm+selTb/gOVWuzbWBC6vAX37IvqmyaMFUOHQi546jEl9MESH25kARfyomwvTVHxUaSiWA==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr15396403plb.316.1565306775461; 
 Thu, 08 Aug 2019 16:26:15 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id v10sm93780975pfe.163.2019.08.08.16.26.14
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:26:14 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] nvme controller reset and namespace scan work race
 conditions
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <779b707b-5892-bf23-52d8-5c8affe524b6@acm.org>
Date: Thu, 8 Aug 2019 16:26:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_162616_977776_26260D42 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/8/19 1:53 PM, Sagi Grimberg wrote:
> for j in `seq 50`; do for i in `seq 50`; do nvme reset /dev/nvme0; done ; nvme disconnect-all; nvme connect-all; done

Has anyone already volunteered to convert this into a patch for the 
blktests project?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
