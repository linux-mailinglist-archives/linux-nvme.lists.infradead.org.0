Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8702612FC29
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Jan 2020 19:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YQPR28lNw04m7ILsosDNn0H/8CTNgg/yQ3oBdR9Xefk=; b=ARKBU979zGNuXeyM5s0HOB/Me
	ac6NHpvGm4iSfT1or6DxYZszWtzJ0ngGlOujt4wC/JIemr+9ai46qoouz3oFFI6yTU3l4Dlyj+jSI
	icbr+5AGiQl0GOzaqoW3BsnIGHUrN8GhJjreeXVAep0OySin5iELarA5z/Li78aaIT6cikwerir+v
	HKNPQUcjbLUHQPDSC6DnZbuaxYk0bZkzSz6RIBka7D8oh/30Xn7u+y8bldHkHKJQ/b9j/eJ1YT5SK
	xAHKwuKMlscEn1o1mxgQQDx+M4zX/93rZF5EyNM08S5tJ0umsx5+/BzMdGskjZoPnOpjbqzbbe/UR
	mBiVcfHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRVH-0003Xt-M4; Fri, 03 Jan 2020 18:16:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRVB-0003XT-D6
 for linux-nvme@lists.infradead.org; Fri, 03 Jan 2020 18:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578075406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q8hst8VJb0ER58d4vgYWhCEur45DxW5reC5MYhmtC6g=;
 b=NrZgkeGVht98sg7BzZYAg4ydcgExaMM6Z1LPnI6uSwrFRu911KZSeDrlUzHthqkhWVXHRs
 OeWc/Y59+wRvZB07JKh8sHH39boSeKmIy0c78ac9No11LLrBC+aZjiWPc4JbDz1sUa6DsY
 j4J2T6d/1BejHW7Q0y2y0EZsWJP/RWY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-7zuU1ulQN8OAV_I9fjjb-g-1; Fri, 03 Jan 2020 13:14:47 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED714DB62;
 Fri,  3 Jan 2020 18:14:46 +0000 (UTC)
Received: from [10.10.120.226] (ovpn-120-226.rdu2.redhat.com [10.10.120.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 428E78466A;
 Fri,  3 Jan 2020 18:14:46 +0000 (UTC)
Subject: Re: [PATCH 3/4] Use systemd-generated hostid if no hostid is
 configured
To: Andy Lutomirski <luto@kernel.org>, linux-nvme@lists.infradead.org
References: <cover.1576726427.git.luto@kernel.org>
 <b4feb87b30edfb30998a2b42de3b1e0618203700.1576726427.git.luto@kernel.org>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <7ae79adc-896c-f007-dcf8-3cff84b3bc02@redhat.com>
Date: Fri, 3 Jan 2020 12:14:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b4feb87b30edfb30998a2b42de3b1e0618203700.1576726427.git.luto@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 7zuU1ulQN8OAV_I9fjjb-g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101649_522219_F5B2D3EF 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello Andy,

On 12/19/2019 09:31 PM, Andy Lutomirski wrote:
> This is just like the hostnqn support.  It adds a show-hostid command
> for introspection.
> 
> Signed-off-by: Andy Lutomirski <luto@kernel.org>
> ---
>   Documentation/nvme-show-hostid.txt | 29 +++++++++++++++
>   fabrics.c                          | 57 ++++++++++++++++++++++++++----
>   fabrics.h                          |  1 +
>   nvme-builtin.h                     |  1 +
>   nvme.c                             | 15 ++++++++
>   5 files changed, 96 insertions(+), 7 deletions(-)
>   create mode 100644 Documentation/nvme-show-hostid.txt
> 
> diff --git a/Documentation/nvme-show-hostid.txt b/Documentation/nvme-show-hostid.txt
> new file mode 100644
> index 000000000000..52bdc8a1f480
> --- /dev/null
> +++ b/Documentation/nvme-show-hostid.txt
> @@ -0,0 +1,29 @@
> +nvme-show-hostid(1)
> +===================
> +
> +NAME
> +----
> +nvme-show-hostid - Generate a host NVMe ID
> +

I pulled the latest nvme-cli and applied your patch set

https://github.com/linux-nvme/nvme-cli

Seems to work on Fedora 31

$ nvme show-hostnqn
nqn.2019-10.us.luto:sd_id128_app:a9e4b2c8953340988142e32ca6d67922

$ nvme show-hostid
f467779d-1940-4659-b200-74278899b2ca

Thanks,
David


> +SYNOPSIS
> +--------
> +[verse]
> +'nvme show-hostid'
> +
> +DESCRIPTION
> +-----------
> +Show the host ID configured for the system.  If /etc/nvme/hostid is
> +not present and systemd application-specific machine IDs are available,
> +this will show the systemd-generated host ID for the system.
> +
> +OPTIONS
> +-------
> +No options needed
> +
> +EXAMPLES
> +--------
> +nvme show-hostid
> +
> +NVME
> +----
> +Part of the nvme-user suite
> diff --git a/fabrics.c b/fabrics.c
> index 4448416f9855..7c5b7efd5270 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -46,6 +46,7 @@
>   #ifdef HAVE_SYSTEMD
>   #include <systemd/sd-id128.h>
>   #define NVME_HOSTNQN_ID SD_ID128_MAKE(c7,f4,61,81,12,be,49,32,8c,83,10,6f,9d,dd,d8,6b)
> +#define NVME_HOSTID_ID SD_ID128_MAKE(df,66,bf,ec,f7,e4,21,0e,46,27,ac,a8,f2,8f,3b,98)
>   #endif
>   
>   #define NVMF_HOSTID_SIZE	36
> @@ -728,11 +729,11 @@ static int nvmf_hostnqn_load(void)
>   	return cfg.hostnqn != NULL;
>   }
>   
> -static int nvmf_hostid_file(void)
> +static char *hostid_read_file(void)
>   {
>   	FILE *f;
>   	char hostid[NVMF_HOSTID_SIZE + 1];
> -	int ret = false;
> +	char *ret = NULL;
>   
>   	f = fopen(PATH_NVMF_HOSTID, "r");
>   	if (f == NULL)
> @@ -741,16 +742,58 @@ static int nvmf_hostid_file(void)
>   	if (fgets(hostid, sizeof(hostid), f) == NULL)
>   		goto out;
>   
> -	cfg.hostid = strdup(hostid);
> -	if (!cfg.hostid)
> -		goto out;
> +	ret = strdup(hostid);
> +
>   
> -	ret = true;
>   out:
>   	fclose(f);
>   	return ret;
>   }
>   
> +static char *hostid_generate_systemd(void)
> +{
> +#if defined(LIBUUID) && defined(HAVE_SYSTEMD)
> +	sd_id128_t id;
> +	char uuidstr[37];
> +	char *ret;
> +
> +	if (sd_id128_get_machine_app_specific(NVME_HOSTID_ID, &id) < 0)
> +		return NULL;
> +
> +	uuid_unparse_lower(id.bytes, uuidstr);
> +
> +	if (asprintf(&ret, "%s\n", uuidstr) == -1)
> +		ret = NULL;
> +
> +	return ret;
> +#else
> +	return NULL;
> +#endif
> +}
> +
> +/* returns an allocated string or NULL */
> +char *hostid_read(void)
> +{
> +	char *ret;
> +
> +	ret = hostid_read_file();
> +	if (ret)
> +		return ret;
> +
> +	ret = hostid_generate_systemd();
> +	if (ret)
> +		return ret;
> +
> +	return NULL;
> +}
> +
> +static int nvmf_hostid_load(void)
> +{
> +	cfg.hostid = hostid_read();
> +
> +	return cfg.hostid != NULL;
> +}
> +
>   static int
>   add_bool_argument(char **argstr, int *max_len, char *arg_str, bool arg)
>   {
> @@ -829,7 +872,7 @@ static int build_options(char *argstr, int max_len, bool discover)
>   	    add_argument(&argstr, &max_len, "trsvcid", cfg.trsvcid) ||
>   	    ((cfg.hostnqn || nvmf_hostnqn_load()) &&
>   		    add_argument(&argstr, &max_len, "hostnqn", cfg.hostnqn)) ||
> -	    ((cfg.hostid || nvmf_hostid_file()) &&
> +	    ((cfg.hostid || nvmf_hostid_load()) &&
>   		    add_argument(&argstr, &max_len, "hostid", cfg.hostid)) ||
>   	    (!discover &&
>   	      add_int_argument(&argstr, &max_len, "nr_io_queues",
> diff --git a/fabrics.h b/fabrics.h
> index b8e53f492b53..64aede897535 100644
> --- a/fabrics.h
> +++ b/fabrics.h
> @@ -4,6 +4,7 @@
>   #define NVMF_DEF_DISC_TMO	30
>   
>   extern char *hostnqn_read(void);
> +extern char *hostid_read(void);
>   
>   extern int discover(const char *desc, int argc, char **argv, bool connect);
>   extern int connect(const char *desc, int argc, char **argv);
> diff --git a/nvme-builtin.h b/nvme-builtin.h
> index bfb907dff9ef..907d470cbeac 100644
> --- a/nvme-builtin.h
> +++ b/nvme-builtin.h
> @@ -71,6 +71,7 @@ COMMAND_LIST(
>   	ENTRY("disconnect-all", "Disconnect from all connected NVMeoF subsystems", disconnect_all_cmd)
>   	ENTRY("gen-hostnqn", "Generate NVMeoF host NQN", gen_hostnqn_cmd)
>   	ENTRY("show-hostnqn", "Show NVMeoF host NQN", show_hostnqn_cmd)
> +	ENTRY("show-hostid", "Show NVMeoF host ID", show_hostid_cmd)
>   	ENTRY("dir-receive", "Submit a Directive Receive command, return results", dir_receive)
>   	ENTRY("dir-send", "Submit a Directive Send command, return results", dir_send)
>   	ENTRY("virt-mgmt", "Manage Flexible Resources between Primary and Secondary Controller ", virtual_mgmt)
> diff --git a/nvme.c b/nvme.c
> index 0c23eee8a477..d81f8226b84d 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -4771,6 +4771,21 @@ static int show_hostnqn_cmd(int argc, char **argv, struct command *command, stru
>   	}
>   }
>   
> +static int show_hostid_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
> +{
> +	char *hostid;
> +
> +	hostid = hostid_read();
> +	if (hostid) {
> +		fputs(hostid, stdout);
> +		free(hostid);
> +		return 0;
> +	} else {
> +		fprintf(stderr, "hostid is not available -- generate /etc/nvme/hostid\n");
> +		return -ENOENT;
> +	}
> +}
> +
>   static int discover_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
>   {
>   	const char *desc = "Send Get Log Page request to Discovery Controller.";
> 


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
