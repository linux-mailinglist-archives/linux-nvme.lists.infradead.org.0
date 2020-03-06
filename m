Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F9A17C82E
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 23:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=n3cbkBzKWuUh/pvptNPsocOTm
	GJkmcDye/uYzvCREkuumhF5UIaogx9AziuwixIxQhOxH+tDhQX9WhHrQCs0PQmk6XGVHv3jbERZ/F
	I/HmIez0Dl8sL6RzBB692X6PTdwXUBxcuDiig0vbzcngn8psyxbI14v9r9NaJvOki3VMN1gZO3+G6
	8PzDwfHjRF14Kj0HkDz3b8JuJjQgcnsHDQZ0rE9WsivSl020qqtOwj5mVAHvpwu/I6tknUj1aa2/c
	0Ix++kKSE+ndr0SjQYr8c51paH+zU7TjUFAyJTOLHKmVZdV6s/LpEemAwY7524uuQ3lXqzICtUYrv
	Juqy1PQIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALD8-0008LB-6Q; Fri, 06 Mar 2020 22:12:50 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALCv-0008HE-CJ
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 22:12:38 +0000
Received: by mail-ot1-f53.google.com with SMTP id v10so4029544otp.2
 for <linux-nvme@lists.infradead.org>; Fri, 06 Mar 2020 14:12:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=T2SMWgAyubOluPwABG1WCS8yEhmcXUgJQcs9eb7e3CQqHWB0M21U1AUDqST+2XYnBF
 2epa3Ssi0nEp3TkZel1xhW6jjNao9oLgSGOM6Cy/MFW04+AyIrMfNy3BnsMTR4ffRbVg
 8ibDbvXyL3+o10Sgo5DBB23kvEYGPtQOxCOQ6cOMngV80R2gW9rC1btc1hvk4Vt0gfWN
 UkYTeoDAYVDk/z0UHv6dGY0Wt/g8alRQgvn3nqclwYeuRXQU4/AsAFBZsCxEh8rUF8Ov
 jZgdbdAyCzul86vOPCbQDZIqkNbnLlObAMb2xlzEHeE6wU8Gj1OBJh0/bu8amD5dNFRr
 X8mw==
X-Gm-Message-State: ANhLgQ04Am5IQTOASJQP8hod5IuOdjQv8TyFfw+YrIWkov0gHqY5j29s
 qZ/KY1YzjKc7vCihix1BblwEvDap
X-Google-Smtp-Source: ADFU+vuwlxAy15v0OeAsWYTnaWb9trVodT2pKP2df1RJxCr8sS9AHIMRJwfgDtBUcKh9IA6wtu9x9Q==
X-Received: by 2002:a9d:282:: with SMTP id 2mr4270593otl.178.1583532755873;
 Fri, 06 Mar 2020 14:12:35 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id c21sm284320oiy.11.2020.03.06.14.12.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 14:12:34 -0800 (PST)
Subject: Re: [PATCH 3/3] nvme/fcloop: flush workqueue before calling
 nvme_fc_unregister_remoteport()
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20200306130440.16864-1-hare@suse.de>
 <20200306130440.16864-4-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2047537e-7feb-74f6-99e5-8acfffe22ee0@grimberg.me>
Date: Fri, 6 Mar 2020 14:12:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200306130440.16864-4-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_141237_423010_907420D1 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.53 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 TVD_SPACE_RATIO        No description available.
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
Cc: Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
