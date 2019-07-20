Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B257C6EE6A
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 10:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfGNDHxMRJ7Q61/A+cZAsmghCyAVRzVY6as7NkhKv14=; b=LHKNbhGTfOrUuE
	NYpXeGRfHWAH62DyvMbe54UwpWNlfWbCrp8lA34xSrJ9+K1pzkLwihJMjsXQFLS0NtUvhF6SlxdgX
	rf3taNbcAlgHELghifgTWikx0dqa3P440JSeRu9T4/hOmttvWKIbS9YmlAG/nqzARAnBUqQOPwuVm
	6lAhngiKIWM0jmOkUoxOdTTPrR43jsGRzL4uLoqhTzYKQmECwdphhgebVYQx8vUuu5KN0yArxGp3O
	U29z55MVbBwpV9WdENTnYCU852y6SugL3YfnZsmPp66O6FxZACK/D8ZUPmZO1WzaMVMtQ5t5HVn52
	jGGdWFi2NOVp0BF8Q75Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokgH-0002SV-No; Sat, 20 Jul 2019 08:25:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokg8-0002Rs-Ph
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 08:25:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so15157425pfp.7
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 01:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q7Y5ZZs8kegr5H6wnuRReedynDUt+9NZDHg9wJYtMik=;
 b=Sh3hLAUs+aW2S/OAg0Lv9JaH31R3FLD7im/yRbj2fB93MkcS5O0x2VB3E/dcacRqv0
 43hx/9Zw0Dk8UlRWWk7uPr8TmNBX3EqA5umipZjCjQBJb/y0b+/JVsdnnjTFhZ46mdKm
 Y3+0urI3ZWdSbVtCCcijVEHPzhz2S2XAOqyxcUXRII1AagmEjj2TgK9GryNIX2d3/HJs
 qwhLalVwc+gc+HuNUwJ1ImJf5v5evqVjXkyKe8QurMJtklJf4s9rPW7Q0N3gQdjEYY5s
 pjcBFTEmMkGi3Al/fal0OzJucUGUyrb5knqbzx1bomJiMioCwKK0PLX9V5SfuY33ugAo
 scAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q7Y5ZZs8kegr5H6wnuRReedynDUt+9NZDHg9wJYtMik=;
 b=hFik5t1+TT7ZnTUL/Ndu0Z6JEi7UlppLQ8dYy2vdNKoiZ0WFLyboWdObEgD1NrDy7m
 8up2iKzDlt0E/lt5skr5M6jD+2xKkNZATgCuK4R7RhMMQOas2NCJHVhq4Gm0lCRvq6b3
 cwoLY7AXPGy1c3i4bPsJp7Pbs3zH50kuMRZc5I46twU9YCsgFcc7Ev6mr+Zx7N4C2dlF
 wp+GMlIs4IJdSTHC05u8oIcv/0rHEPRwjy1LaRsGYVD2HhUHHOAny7GpUGC0naBWSVfi
 C6DVQSDD9VJsrAYI0rPZ1SpUW6vi4m/UNaSny0fy/XXbFV31NMBPTDol2aH11Njb3XA2
 DK/Q==
X-Gm-Message-State: APjAAAU+e0WF9EdqSLpKOgUrv7v2UfD9xY0J4sgGqeS/i/l45ON/cLna
 miJXWjUg9WMdQqLYTszWcxa8QS1BdCY=
X-Google-Smtp-Source: APXvYqwNZQRT5j2dY+X1kM7cHARI6w+6tufoMf3+cv6I6NtOP89+T+U4M5TxSnMMaLTXLqhnbJQm4w==
X-Received: by 2002:a63:2148:: with SMTP id s8mr57493380pgm.336.1563611112949; 
 Sat, 20 Jul 2019 01:25:12 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v12sm29473842pgr.86.2019.07.20.01.25.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 01:25:12 -0700 (PDT)
Date: Sat, 20 Jul 2019 17:25:04 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v2 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
Message-ID: <20190720082504.GG22395@minwoo-desktop>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-8-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719225305.11397-8-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_012516_862362_4E4C2500 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-19 15:53:02, James Smart wrote:
> In preparation for searching controllers to match with connect args:
> 
> Create a new routine find_ctrl_with_connectargs() that will search the
> controllers that exist in the system to find one that has attributes
> that match the connect arguments specified.  If found, the routine
> returns the controller name ("nvme?"). If not found, a NULL is returned.
> 
> Routine is defined as a global as a subsequent patch will use it
> from the fabrics routines.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> 
> ---
> v2:
>   change "ctlr" to "ctrl" in fprintf

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

> ---
>  nvme.c | 37 +++++++++++++++++++++++++++++++++++++
>  nvme.h |  1 +
>  2 files changed, 38 insertions(+)
> 
> diff --git a/nvme.c b/nvme.c
> index 7f706c8..e4fdb4e 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -2048,6 +2048,43 @@ cleanup_exit:
>  	return found;
>  }
>  
> +/*
> + * Look through the system to find an existing controller whose
> + * attributes match the connect arguments specified
> + * If found, a string containing the controller name (ex: "nvme?")
> + * is returned.
> + * If not found, a NULL is returned.
> + */
> +char *find_ctrl_with_connectargs(struct connect_args *args)
> +{
> +	struct dirent **devices;
> +	char *devname = NULL;
> +	int i, n;
> +
> +	n = scandir(SYS_NVME, &devices, scan_ctrls_filter, alphasort);
> +	if (n < 0) {
> +		fprintf(stderr, "no NVMe controller(s) detected.\n");
> +		return NULL;
> +	}
> +
> +	for (i = 0; i < n; i++) {
> +		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {

James,

It might be too late to discuss about this argument, but did you decided
to have (struct connect_args) as a parameter for this function?

Sorry for not giving any thoughts on the following mail[1], but I would
prefer not introducing a new data structure for this because it's just a
bypass argument from a perspective of find_ctrl_with_connetargs().  But
If you think it's okay to go with, then I'm fine with that too.

[1] http://lists.infradead.org/pipermail/linux-nvme/2019-July/025646.html

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
